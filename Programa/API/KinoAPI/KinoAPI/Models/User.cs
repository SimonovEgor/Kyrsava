using System;
using System.Collections.Generic;

namespace KinoAPI.Models
{
    public partial class User
    {
        public int IdUsers { get; set; }
        public string UsersLogin { get; set; } = null!;
        public string UsersPassword { get; set; } = null!;
        public string? UsersName { get; set; }
        public string? UsersMiddleName { get; set; }
        public string? UsersSurname { get; set; }
        public string? UsersEmail { get; set; }
        public string UsersRole { get; set; } = null!;
        public string? UsersTitle { get; set; }
        public DateTime? UsersBirth { get; set; }
        public string? UsersAvatar { get; set; }
    }
}
