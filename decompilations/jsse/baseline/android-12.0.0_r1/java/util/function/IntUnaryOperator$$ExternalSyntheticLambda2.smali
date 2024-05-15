.class public final synthetic Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;->INSTANCE:Ljava/util/function/IntUnaryOperator$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(I)I
    .registers 2

    invoke-static {p1}, Ljava/util/function/IntUnaryOperator;->lambda$identity$2(I)I

    move-result p1

    return p1
.end method
