using AspNetKino.Models;
//using KinoAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Diagnostics;
using System.Net.Http;
using System.Security.Cryptography;
using System.Text;
using System.Net.Http;

using System.Text.Json;
using System.Threading.Tasks;

namespace AspNetKino.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly HttpClient _httpClient;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
            _httpClient = new HttpClient();


        }
        [HttpGet]
        public IActionResult Авторизация()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Авторизация(User user)
        {
            // Хешируем введенный пользователем пароль
            string hashedPassword = HashPassword(user.UsersPassword);

            // Выводим хешированный пароль для демонстрации
            ViewBag.HashedPassword = hashedPassword;

            // Отправляем запрос к API для получения данных пользователя
            HttpResponseMessage response = await _httpClient.GetAsync("https://localhost:7091/api/Users");

            if (response.IsSuccessStatusCode)
            {
                var users = await response.Content.ReadAsAsync<List<User>>();

                // Проверяем, существует ли пользователь с такими данными
                if (users.Any(u => u.UsersLogin == user.UsersLogin && u.UsersPassword == hashedPassword))
                {
                    // Успешная авторизация
                    // Можно сохранить информацию о пользователе в сессии или использовать токены аутентификации
                    return RedirectToAction("Главная", "Home"); // Перенаправление на главную страницу после успешной авторизации
                }
            }

            // Неверные учетные данные или ошибка при запросе к API
            ModelState.AddModelError(string.Empty, "Неверное имя пользователя или пароль");
            return View(user); // Повторный показ формы входа с сообщением об ошибке
        }

        public static string HashPassword(string password)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                // Преобразуем пароль в байты
                byte[] bytes = Encoding.UTF8.GetBytes(password);

                // Хешируем пароль
                byte[] hashBytes = sha256Hash.ComputeHash(bytes);

                // Преобразуем хеш в строку шестнадцатеричного представления
                StringBuilder builder = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    builder.Append(hashBytes[i].ToString("x2"));
                }
                return builder.ToString().ToUpper();
            }
        }
        public IActionResult AboutUS()
        {
            return View();
        }
        public IActionResult Anime()
        {
            return View();
        }
        public IActionResult Collection()
        {
            return View();
        }
        public IActionResult FAQ()
        {
            return View();
        }
        public IActionResult Rules()
        {
            return View();
        }
        public IActionResult Seti()
        {
            return View();
        }
        public IActionResult Пользователи()
        {
            return View();
        }

        //====================================================================================


        public IActionResult Главная()
        {
            return View();
        }
        public IActionResult Право()
        {
            return View();
        }
        [HttpGet]
        public IActionResult Регистрация()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Регистрация(string users_login, string users_password, string repeat_password, string users_mail, string users_role)
        {
            // Проверяем, что пароль и его повторение совпадают
            if (users_password != repeat_password)
            {
                ModelState.AddModelError(string.Empty, "Пароли не совпадают");
                return View(); // Повторный показ формы регистрации с сообщением об ошибке
            }

            // Создаем объект пользователя для отправки на сервер
            var user = new
            {
                usersLogin = users_login,
                usersPassword = users_password,
                usersEmail = users_mail,
                usersRole = users_role
            };

            // Преобразуем пользователя в JSON
            var jsonUser = JsonConvert.SerializeObject(user);

            // Отправляем запрос на API для регистрации пользователя
            var content = new StringContent(jsonUser, Encoding.UTF8, "application/json");
            var response = await _httpClient.PostAsync("https://localhost:7091/api/Users", content);

            if (response.IsSuccessStatusCode)
            {
                // Регистрация прошла успешно
                // Можно перенаправить пользователя на страницу подтверждения или другую страницу
                return RedirectToAction("Главная", "Home");
            }
            else
            {
                // В случае ошибки выводим сообщение пользователю
                ModelState.AddModelError(string.Empty, "Ошибка при регистрации пользователя");
                return View(); // Повторный показ формы регистрации с сообщением об ошибке
            }
        }

        public IActionResult Соглашение()
        {
            return View();
        }




        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}