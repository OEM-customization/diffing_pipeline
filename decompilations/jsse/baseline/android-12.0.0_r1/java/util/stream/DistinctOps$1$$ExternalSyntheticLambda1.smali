.class public final synthetic Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;->INSTANCE:Ljava/util/stream/DistinctOps$1$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method