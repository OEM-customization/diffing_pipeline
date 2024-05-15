.class public final synthetic Ljava/util/stream/-$$Lambda$ono9Bp0lMrKbIRfAAYdycY0_qag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$ono9Bp0lMrKbIRfAAYdycY0_qag;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$ono9Bp0lMrKbIRfAAYdycY0_qag;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$ono9Bp0lMrKbIRfAAYdycY0_qag;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$ono9Bp0lMrKbIRfAAYdycY0_qag;->INSTANCE:Ljava/util/stream/-$$Lambda$ono9Bp0lMrKbIRfAAYdycY0_qag;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api applyAsInt(II)I
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Integer;->sum(II)I

    move-result p1

    return p1
.end method
