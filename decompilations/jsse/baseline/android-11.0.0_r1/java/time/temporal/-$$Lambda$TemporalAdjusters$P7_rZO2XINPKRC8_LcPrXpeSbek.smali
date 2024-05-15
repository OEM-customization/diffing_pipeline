.class public final synthetic Ljava/time/temporal/-$$Lambda$TemporalAdjusters$P7_rZO2XINPKRC8_LcPrXpeSbek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalAdjusters$P7_rZO2XINPKRC8_LcPrXpeSbek;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$P7_rZO2XINPKRC8_LcPrXpeSbek;

    invoke-direct {v0}, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$P7_rZO2XINPKRC8_LcPrXpeSbek;-><init>()V

    sput-object v0, Ljava/time/temporal/-$$Lambda$TemporalAdjusters$P7_rZO2XINPKRC8_LcPrXpeSbek;->INSTANCE:Ljava/time/temporal/-$$Lambda$TemporalAdjusters$P7_rZO2XINPKRC8_LcPrXpeSbek;

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

    invoke-static {p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$firstDayOfNextMonth$3(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
