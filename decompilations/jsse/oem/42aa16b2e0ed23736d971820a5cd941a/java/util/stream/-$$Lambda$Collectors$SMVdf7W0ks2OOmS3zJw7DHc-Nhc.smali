.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$SMVdf7W0ks2OOmS3zJw7DHc-Nhc;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->lambda$toSet$4(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
