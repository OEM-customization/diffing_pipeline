.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$kXZFmh6iM6xf9lJWimhd2Ef6NEs;

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

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->lambda$throwingMerger$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
