.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$dk4em1jXH8zNd7gZJwP7T1HgMsc;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [I

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$summingInt$13([I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
