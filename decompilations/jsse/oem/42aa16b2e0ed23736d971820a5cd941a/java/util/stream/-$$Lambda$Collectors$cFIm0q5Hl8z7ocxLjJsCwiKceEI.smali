.class public final synthetic Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;->INSTANCE:Ljava/util/stream/-$$Lambda$Collectors$cFIm0q5Hl8z7ocxLjJsCwiKceEI;

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

    check-cast p1, [D

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$summingDouble$21([D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
