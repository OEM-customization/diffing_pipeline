.class public final synthetic Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/function/UnaryOperator$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Ljava/util/function/UnaryOperator;->lambda$identity$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
