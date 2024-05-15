.class public final synthetic Ljava/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljava/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;->INSTANCE:Ljava/time/temporal/TemporalQueries$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api queryFrom(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/time/temporal/TemporalQueries;->lambda$static$1(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/Chronology;

    move-result-object p1

    return-object p1
.end method
