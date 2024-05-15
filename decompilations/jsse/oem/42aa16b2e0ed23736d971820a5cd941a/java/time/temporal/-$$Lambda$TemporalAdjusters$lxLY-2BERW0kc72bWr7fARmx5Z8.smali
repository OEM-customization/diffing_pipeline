.class public final synthetic Ljava/time/temporal/-$$Lambda$TemporalAdjusters$lxLY-2BERW0kc72bWr7fARmx5Z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalAdjusters$lxLY-2BERW0kc72bWr7fARmx5Z8;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$lxLY-2BERW0kc72bWr7fARmx5Z8;

    invoke-direct {v0}, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$lxLY-2BERW0kc72bWr7fARmx5Z8;-><init>()V

    sput-object v0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$lxLY-2BERW0kc72bWr7fARmx5Z8;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalAdjusters$lxLY-2BERW0kc72bWr7fARmx5Z8;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 2

    invoke-static {p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$firstDayOfNextYear$6(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
