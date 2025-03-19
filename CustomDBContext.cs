using CoreEntities.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Metadata;
using System.Text;
using System.Threading.Tasks;

namespace SqlServerPlugin
{
    public class CustomDBContext : DbContext
    {
        public CustomDBContext(DbContextOptions<CustomDBContext> options) : base(options) { }

        public DbSet<Teacher> Teachers { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<Score> Scores { get; set; }
        public DbSet<Quiz> Quizzes { get; set; }
        public DbSet<Class> Classes { get; set; }
        public DbSet<Notification> Notifications { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<ClassQuiz> ClassQuizzes { get; set; }
        public DbSet<Subject> Subjects { get; set; }



        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>().HasOne(u => u.Roles);
            //modelBuilder.Entity<Teacher_Class>().HasMany(u => u.Teachers);
            //modelBuilder.Entity<Teacher_Class>().HasMany(u => u.Class);
            modelBuilder.Entity<ClassQuiz>()
            .HasNoKey();
        }

    }
}
