using System;
using System.Collections.Generic;

namespace KinoAPI.Models
{
    public partial class Cinema
    {
        public int IdCinema { get; set; }
        public string? CinemaName { get; set; }
        public string? CinemaType { get; set; }
        public int? CinemaEpisode { get; set; }
        public int? CinemaEpisodeTime { get; set; }
        public string? CinemaOpisanie { get; set; }
        public string? CinemaComments { get; set; }
        public string? CinemaStatus { get; set; }
        public string? CinemaGenre { get; set; }
        public string? CinemaAgeRg { get; set; }
        public double? CinemaRaiting { get; set; }
        public double? CinemaOcenka { get; set; }
        public string? CinemaStudio { get; set; }
        public string? CinemaSecondName { get; set; }
        public string? CinemaImage { get; set; }
    }
}
