using Azure;
using CoreEntities.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Diagnostics;
using Microsoft.Extensions.Hosting;
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
        public DbSet<Subject> Subjects { get; set; }
        public DbSet<Question> Questions { get; set; }
        public DbSet<Answer> Answers { get; set; }
        public DbSet<Grade> Grades { get; set; }



        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<User>().HasOne(u => u.Roles);

            modelBuilder.Entity<Teacher_Student>()
            .HasKey(e => new { e.StudentID, e.TeacherID }); // Composite key

            modelBuilder.Entity<Teacher_Student>()
                .HasOne(e => e.Student)
                .WithMany(s => s.Teacher_Students)
                .HasForeignKey(e => e.StudentID);

            modelBuilder.Entity<Teacher_Student>()
                .HasOne(e => e.Teachers)
                .WithMany(c => c.Teacher_Students)
                .HasForeignKey(e => e.TeacherID);

            modelBuilder.Entity<Grade>()
               .HasMany(g => g.Classes) // Một Grade có nhiều Class
               .WithOne(c => c.Grades); // Một Class thuộc về một Grade

            modelBuilder.Entity<Notification>()
               .HasOne(n => n.Students) // Một Notification thuộc về một Student
               .WithMany(s => s.Notifications); // Một Student có nhiều Notifications


            modelBuilder.Entity<Notification>()
                .HasOne(n => n.Teachers) // Một Notification thuộc về một Teacher
                .WithMany(t => t.Notifications); // Một Teacher có nhiều Notifications
                


            //modelBuilder.Entity<Notification>().HasOne(u => u.Students);
            modelBuilder.Entity<Answer>().ToTable("Answer");

        }

        
    }
}
