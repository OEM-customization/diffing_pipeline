.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$QJ1yoZI6qBLk2NH-gWkdN8XN8yQ;

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

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$counting$9(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
