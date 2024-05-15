.class public final synthetic Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;

    invoke-direct {v0}, Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;-><init>()V

    sput-object v0, Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalQueries$okxqZ6ZoOhHd_zSzW7k5qRIaLxM;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$static$2(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalUnit;

    move-result-object p1

    return-object p1
.end method
