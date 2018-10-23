﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using System;
using WebApplication1.AppData;

namespace WebApplication1.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20181023115436_QuotesAndSymbolsDb")]
    partial class QuotesAndSymbolsDb
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.1-rtm-125")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("WebApplication1.Models.Quote", b =>
                {
                    b.Property<int>("id");

                    b.Property<float>("close");

                    b.Property<DateTime>("data");

                    b.Property<float>("hight");

                    b.Property<float>("low");

                    b.Property<float>("open");

                    b.Property<int>("symbol_id");

                    b.Property<float>("volume");

                    b.HasKey("id");

                    b.ToTable("Quotes");
                });

            modelBuilder.Entity("WebApplication1.Models.Symbol", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("name");

                    b.HasKey("id");

                    b.ToTable("Symbols");
                });

            modelBuilder.Entity("WebApplication1.Models.Quote", b =>
                {
                    b.HasOne("WebApplication1.Models.Symbol", "symbol")
                        .WithOne("quote")
                        .HasForeignKey("WebApplication1.Models.Quote", "id")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
