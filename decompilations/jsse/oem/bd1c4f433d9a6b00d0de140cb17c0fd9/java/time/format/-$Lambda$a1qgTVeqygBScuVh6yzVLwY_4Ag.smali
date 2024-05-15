.class final synthetic Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:J

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 9
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f3:Ljava/lang/Object;

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    iget-object v1, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f4:Ljava/lang/Object;

    check-cast v1, Ljava/time/format/DateTimeParseContext;

    iget-wide v2, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f2:J

    iget v4, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f0:I

    iget v5, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f1:I

    move-object v6, p1

    check-cast v6, Ljava/time/chrono/Chronology;

    invoke-virtual/range {v0 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->lambda$-java_time_format_DateTimeFormatterBuilder$ReducedPrinterParser_132487(Ljava/time/format/DateTimeParseContext;JIILjava/time/chrono/Chronology;)V

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f0:I

    iput p2, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f1:I

    iput-wide p3, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f2:J

    iput-object p5, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f3:Ljava/lang/Object;

    iput-object p6, p0, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0, p1}, Ljava/time/format/-$Lambda$a1qgTVeqygBScuVh6yzVLwY_4Ag;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
