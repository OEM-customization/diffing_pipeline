.class public final synthetic Ljava/time/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;

    invoke-direct {v0}, Ljava/time/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;-><init>()V

    sput-object v0, Ljava/time/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;->INSTANCE:Ljava/time/-$$Lambda$PTL8WkLA4o-1z4zIUBjrvwi808w;

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

    invoke-static {p1}, Ljava/time/Instant;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method