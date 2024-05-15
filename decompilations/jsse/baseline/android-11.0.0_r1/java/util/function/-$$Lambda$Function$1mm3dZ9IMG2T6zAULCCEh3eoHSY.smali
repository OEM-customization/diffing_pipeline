.class public final synthetic Ljava/util/function/-$$Lambda$Function$1mm3dZ9IMG2T6zAULCCEh3eoHSY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/-$$Lambda$Function$1mm3dZ9IMG2T6zAULCCEh3eoHSY;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$$Lambda$Function$1mm3dZ9IMG2T6zAULCCEh3eoHSY;

    invoke-direct {v0}, Ljava/util/function/-$$Lambda$Function$1mm3dZ9IMG2T6zAULCCEh3eoHSY;-><init>()V

    sput-object v0, Ljava/util/function/-$$Lambda$Function$1mm3dZ9IMG2T6zAULCCEh3eoHSY;->INSTANCE:Ljava/util/function/-$$Lambda$Function$1mm3dZ9IMG2T6zAULCCEh3eoHSY;

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

    invoke-static {p1}, Ljava/util/function/Function;->lambda$identity$2(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
