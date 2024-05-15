.class final synthetic Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic $INST$0:Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Ljava/util/function/Predicate;->-java_util_function_Predicate-mthref-0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;-><init>()V

    sput-object v0, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;->$INST$0:Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$1rDGbc8p7Mv-tQJZzJy5uAxVFbE;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
