.class public final synthetic Ljava/util/stream/-$$Lambda$XcCQq8gYss3OrVBeBIbyvBZpOz8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$XcCQq8gYss3OrVBeBIbyvBZpOz8;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$XcCQq8gYss3OrVBeBIbyvBZpOz8;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$XcCQq8gYss3OrVBeBIbyvBZpOz8;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$XcCQq8gYss3OrVBeBIbyvBZpOz8;->INSTANCE:Ljava/util/stream/-$$Lambda$XcCQq8gYss3OrVBeBIbyvBZpOz8;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/OptionalLong;

    invoke-virtual {p1}, Ljava/util/OptionalLong;->isPresent()Z

    move-result p1

    return p1
.end method
