.class public final synthetic Ljava/util/stream/-$$Lambda$Nodes$CollectorTask$OfRef$Zd2fdoB-mZW0DbPHybIpYjf-Pyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/IntFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$Nodes$CollectorTask$OfRef$Zd2fdoB-mZW0DbPHybIpYjf-Pyo;->f$0:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$Nodes$CollectorTask$OfRef$Zd2fdoB-mZW0DbPHybIpYjf-Pyo;->f$0:Ljava/util/function/IntFunction;

    invoke-static {v0, p1, p2}, Ljava/util/stream/Nodes$CollectorTask$OfRef;->lambda$new$0(Ljava/util/function/IntFunction;J)Ljava/util/stream/Node$Builder;

    move-result-object p1

    return-object p1
.end method
