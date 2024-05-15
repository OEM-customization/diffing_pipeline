.class public final synthetic Ljava/util/stream/Node$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Node$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Node$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/stream/Node$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 2

    invoke-static {p1}, Ljava/util/stream/Node;->lambda$truncate$0(Ljava/lang/Object;)V

    return-void
.end method
