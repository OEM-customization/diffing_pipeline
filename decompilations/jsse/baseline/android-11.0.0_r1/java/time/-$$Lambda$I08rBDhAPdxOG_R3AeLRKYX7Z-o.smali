.class public final synthetic Ljava/time/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/time/temporal/TemporalQuery;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/time/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/time/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

    invoke-direct {v0}, Ljava/time/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;-><init>()V

    sput-object v0, Ljava/time/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;->INSTANCE:Ljava/time/-$$Lambda$I08rBDhAPdxOG_R3AeLRKYX7Z-o;

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

    invoke-static {p1}, Ljava/time/OffsetTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1
.end method
