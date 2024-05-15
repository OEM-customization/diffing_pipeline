.class public final synthetic Ljava/time/temporal/-$$Lambda$TemporalAdjusters$WAuzLMCz-2-SwnlcREz0tiYj3XA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalAdjusters$WAuzLMCz-2-SwnlcREz0tiYj3XA;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$WAuzLMCz-2-SwnlcREz0tiYj3XA;

    invoke-direct {v0}, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$WAuzLMCz-2-SwnlcREz0tiYj3XA;-><init>()V

    sput-object v0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$WAuzLMCz-2-SwnlcREz0tiYj3XA;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalAdjusters$WAuzLMCz-2-SwnlcREz0tiYj3XA;

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

    invoke-static {p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$lastDayOfMonth$2(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
