.class final synthetic Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# static fields
.field public static final synthetic $INST$0:Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;


# direct methods
.method private final synthetic $m$0(I)I
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    invoke-static {p1}, Ljava/util/function/IntUnaryOperator;->lambda$-java_util_function_IntUnaryOperator_3617(I)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;-><init>()V

    sput-object v0, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;->$INST$0:Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$n4VFJtoJH2VuvmBTzi4u5lJWNJs;->$m$0(I)I

    move-result v0

    return v0
.end method
