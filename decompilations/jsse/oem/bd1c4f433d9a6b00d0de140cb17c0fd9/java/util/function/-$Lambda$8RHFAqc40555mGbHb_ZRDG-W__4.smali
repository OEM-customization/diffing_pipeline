.class final synthetic Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    invoke-static {p1}, Ljava/util/function/Function;->lambda$-java_util_function_Function_3851(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;

    invoke-direct {v0}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;-><init>()V

    sput-object v0, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;->$INST$0:Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/util/function/-$Lambda$8RHFAqc40555mGbHb_ZRDG-W__4;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
