.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$Nv3GWD5X6YPdKFD8ca_9SG7qCDI;

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

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$reducing$43([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method