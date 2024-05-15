.class public final synthetic Ljava/time/chrono/AbstractChronology$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/chrono/AbstractChronology$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/chrono/AbstractChronology$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/chrono/AbstractChronology$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronology$$ExternalSyntheticLambda0;->INSTANCE:Ljava/time/chrono/AbstractChronology$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/time/chrono/ChronoLocalDate;

    check-cast p2, Ljava/time/chrono/ChronoLocalDate;

    invoke-static {p1, p2}, Ljava/time/chrono/AbstractChronology;->lambda$static$7f2d2d5b$1(Ljava/time/chrono/ChronoLocalDate;Ljava/time/chrono/ChronoLocalDate;)I

    move-result p1

    return p1
.end method
