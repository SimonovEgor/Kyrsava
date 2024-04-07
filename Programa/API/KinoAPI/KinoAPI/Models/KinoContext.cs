using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace KinoAPI.Models
{
    public partial class KinoContext : DbContext
    {
        public KinoContext()
        {
        }

        public KinoContext(DbContextOptions<KinoContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Author> Authors { get; set; } = null!;
        public virtual DbSet<Character> Characters { get; set; } = null!;
        public virtual DbSet<Cinema> Cinemas { get; set; } = null!;
        public virtual DbSet<Collection> Collections { get; set; } = null!;
        public virtual DbSet<News> News { get; set; } = null!;
        public virtual DbSet<User> Users { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Data Source=DESKTOP-2LTV2JT\\SQLEXPRESS;Initial Catalog=Kino;Persist Security Info=True;User ID=sa;Password=123");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Author>(entity =>
            {
                entity.HasKey(e => e.IdAuthors)
                    .HasName("PK_ID_authors");

                entity.Property(e => e.IdAuthors).HasColumnName("ID_authors");

                entity.Property(e => e.AuthorsBirth)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("authors_birth");

                entity.Property(e => e.AuthorsImage)
                    .IsUnicode(false)
                    .HasColumnName("authors_image");

                entity.Property(e => e.AuthorsName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("authors_name");

                entity.Property(e => e.AuthorsPosition)
                    .IsUnicode(false)
                    .HasColumnName("authors_position");

                entity.Property(e => e.AuthorsRoles)
                    .IsUnicode(false)
                    .HasColumnName("authors_roles");

                entity.Property(e => e.AuthorsWorks)
                    .IsUnicode(false)
                    .HasColumnName("authors_works");
            });

            modelBuilder.Entity<Character>(entity =>
            {
                entity.HasKey(e => e.IdCharacters)
                    .HasName("PK_ID_characters");

                entity.Property(e => e.IdCharacters).HasColumnName("ID_characters");

                entity.Property(e => e.CharactersCinemaName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("characters_cinemaName");

                entity.Property(e => e.CharactersImage)
                    .IsUnicode(false)
                    .HasColumnName("characters_image");

                entity.Property(e => e.CharactersName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("characters_name");

                entity.Property(e => e.CharactersOpisanie)
                    .IsUnicode(false)
                    .HasColumnName("characters_opisanie");

                entity.Property(e => e.CharactersVoiceActor)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("characters_VoiceActor");
            });

            modelBuilder.Entity<Cinema>(entity =>
            {
                entity.HasKey(e => e.IdCinema)
                    .HasName("PK_ID_cinema");

                entity.ToTable("Cinema");

                entity.Property(e => e.IdCinema).HasColumnName("ID_cinema");

                entity.Property(e => e.CinemaAgeRg)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("cinema_ageRG");

                entity.Property(e => e.CinemaComments)
                    .IsUnicode(false)
                    .HasColumnName("cinema_comments");

                entity.Property(e => e.CinemaEpisode).HasColumnName("cinema_episode");

                entity.Property(e => e.CinemaEpisodeTime).HasColumnName("cinema_episodeTime");

                entity.Property(e => e.CinemaGenre)
                    .IsUnicode(false)
                    .HasColumnName("cinema_genre");

                entity.Property(e => e.CinemaImage)
                    .IsUnicode(false)
                    .HasColumnName("cinema_image");

                entity.Property(e => e.CinemaName)
                    .IsUnicode(false)
                    .HasColumnName("cinema_name");

                entity.Property(e => e.CinemaOcenka).HasColumnName("cinema_ocenka");

                entity.Property(e => e.CinemaOpisanie)
                    .IsUnicode(false)
                    .HasColumnName("cinema_opisanie");

                entity.Property(e => e.CinemaRaiting).HasColumnName("cinema_raiting");

                entity.Property(e => e.CinemaSecondName)
                    .IsUnicode(false)
                    .HasColumnName("cinema_secondName");

                entity.Property(e => e.CinemaStatus)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("cinema_status");

                entity.Property(e => e.CinemaStudio)
                    .IsUnicode(false)
                    .HasColumnName("cinema_studio");

                entity.Property(e => e.CinemaType)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("cinema_type");
            });

            modelBuilder.Entity<Collection>(entity =>
            {
                entity.HasKey(e => e.IdCollections)
                    .HasName("PK_ID_collections");

                entity.Property(e => e.IdCollections).HasColumnName("ID_collections");

                entity.Property(e => e.CollectionsTitle)
                    .IsUnicode(false)
                    .HasColumnName("collections_title");
            });

            modelBuilder.Entity<News>(entity =>
            {
                entity.HasKey(e => e.IdNews)
                    .HasName("PK_ID_news");

                entity.Property(e => e.IdNews).HasColumnName("ID_news");

                entity.Property(e => e.NewsContent)
                    .IsUnicode(false)
                    .HasColumnName("news_content");

                entity.Property(e => e.NewsImage)
                    .IsUnicode(false)
                    .HasColumnName("news_image");

                entity.Property(e => e.NewsPublicationDate)
                    .HasColumnType("date")
                    .HasColumnName("news_publicationDate");

                entity.Property(e => e.NewsTitle)
                    .IsUnicode(false)
                    .HasColumnName("news_title");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.HasKey(e => e.IdUsers)
                    .HasName("PK_ID_users");

                entity.Property(e => e.IdUsers).HasColumnName("ID_users");

                entity.Property(e => e.UsersAvatar)
                    .IsUnicode(false)
                    .HasColumnName("users_avatar");

                entity.Property(e => e.UsersBirth)
                    .HasColumnType("date")
                    .HasColumnName("users_birth");

                entity.Property(e => e.UsersEmail)
                    .IsUnicode(false)
                    .HasColumnName("users_email");

                entity.Property(e => e.UsersLogin)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("users_login");

                entity.Property(e => e.UsersMiddleName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("users_middle_name");

                entity.Property(e => e.UsersName)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("users_name");

                entity.Property(e => e.UsersPassword)
                    .HasMaxLength(64)
                    .IsUnicode(false)
                    .HasColumnName("users_password");

                entity.Property(e => e.UsersRole)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("users_role");

                entity.Property(e => e.UsersSurname)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("users_surname");

                entity.Property(e => e.UsersTitle)
                    .HasMaxLength(50)
                    .IsUnicode(false)
                    .HasColumnName("users_title");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
