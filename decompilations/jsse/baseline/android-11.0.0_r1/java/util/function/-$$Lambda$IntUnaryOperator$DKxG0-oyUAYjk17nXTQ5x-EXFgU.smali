.class public final synthetic Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;

    invoke-direct {v0}, Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;-><init>()V

    sput-object v0, Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;->INSTANCE:Ljava/util/function/-$$Lambda$IntUnaryOperator$DKxG0-oyUAYjk17nXTQ5x-EXFgU;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsInt(I)I
    .registers 2

    invoke-static {p1}, Ljava/util/function/IntUnaryOperator;->lambda$identity$2(I)I

    move-result p1

    return p1
.end method
