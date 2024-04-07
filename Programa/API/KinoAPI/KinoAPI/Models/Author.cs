using System;
using System.Collections.Generic;

namespace KinoAPI.Models
{
    public partial class Author
    {
        public int IdAuthors { get; set; }
        public string? AuthorsName { get; set; }
        public string? AuthorsBirth { get; set; }
        public string? AuthorsPosition { get; set; }
        public string? AuthorsRoles { get; set; }
        public string? AuthorsWorks { get; set; }
        public string? AuthorsImage { get; set; }
    }
}
