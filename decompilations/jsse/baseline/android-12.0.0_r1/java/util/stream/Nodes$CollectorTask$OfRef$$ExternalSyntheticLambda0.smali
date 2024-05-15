.class public final synthetic Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;->INSTANCE:Ljava/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ljava/util/stream/Nodes$ConcNode;

    check-cast p1, Ljava/util/stream/Node;

    check-cast p2, Ljava/util/stream/Node;

    invoke-direct {v0, p1, p2}, Ljava/util/stream/Nodes$ConcNode;-><init>(Ljava/util/stream/Node;Ljava/util/stream/Node;)V

    check-cast v0, Ljava/util/stream/Node;

    return-object v0
.end method
