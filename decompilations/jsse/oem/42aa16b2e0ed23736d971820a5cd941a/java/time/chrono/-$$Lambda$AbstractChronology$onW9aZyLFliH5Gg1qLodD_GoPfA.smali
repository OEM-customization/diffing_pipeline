.class public final synthetic Ljava/time/chrono/-$$Lambda$AbstractChronology$onW9aZyLFliH5Gg1qLodD_GoPfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/chrono/-$$Lambda$AbstractChronology$onW9aZyLFliH5Gg1qLodD_GoPfA;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/chrono/-$$Lambda$AbstractChronology$onW9aZyLFliH5Gg1qLodD_GoPfA;

    invoke-direct {v0}, Ljava/time/chrono/-$$Lambda$AbstractChronology$onW9aZyLFliH5Gg1qLodD_GoPfA;-><init>()V

    sput-object v0, Ljava/time/chrono/-$$Lambda$AbstractChronology$onW9aZyLFliH5Gg1qLodD_GoPfA;->INSTANCE:Ljava/time/chrono/-$$Lambda$AbstractChronology$onW9aZyLFliH5Gg1qLodD_GoPfA;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/time/chrono/ChronoLocalDateTime;

    check-cast p2, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-static {p1, p2}, Ljava/time/chrono/AbstractChronology;->lambda$static$b5a61975$1(Ljava/time/chrono/ChronoLocalDateTime;Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result p1

    return p1
.end method