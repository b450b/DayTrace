using System;
namespace DayTrace.Core;

public sealed record ActivityInterval(
    DateTimeOffset StartUtc, DateTimeOffset EndUtc,
    string ProcessName, string WindowTitle, string? TabTitle);
