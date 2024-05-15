.class public final synthetic Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalAdjuster;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;->INSTANCE:Ljava/time/temporal/TemporalAdjusters$$ExternalSyntheticLambda12;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .registers 2

    invoke-static {p1}, Ljava/time/temporal/TemporalAdjusters;->lambda$lastDayOfYear$5(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object p1

    return-object p1
.end method
