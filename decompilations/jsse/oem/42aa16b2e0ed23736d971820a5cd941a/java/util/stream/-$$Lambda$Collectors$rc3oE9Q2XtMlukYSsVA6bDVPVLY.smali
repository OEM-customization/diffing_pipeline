.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$rc3oE9Q2XtMlukYSsVA6bDVPVLY;

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

    check-cast p1, [D

    check-cast p2, [D

    invoke-static {p1, p2}, Ljava/util/stream/Collectors;->lambda$summingDouble$20([D[D)[D

    move-result-object p1

    return-object p1
.end method
