using System;
using System.Collections.Generic;

namespace AspNetKino.Models
{
    public partial class News
    {
        public int IdNews { get; set; }
        public string? NewsTitle { get; set; }
        public string? NewsContent { get; set; }
        public DateTime? NewsPublicationDate { get; set; }
        public string? NewsImage { get; set; }
    }
}
