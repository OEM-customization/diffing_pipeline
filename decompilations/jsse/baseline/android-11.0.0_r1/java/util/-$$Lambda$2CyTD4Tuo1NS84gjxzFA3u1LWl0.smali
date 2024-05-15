.class public final synthetic Ljava/util/-$$Lambda$2CyTD4Tuo1NS84gjxzFA3u1LWl0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/-$$Lambda$2CyTD4Tuo1NS84gjxzFA3u1LWl0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api accept(D)V
    .registers 4

    iget-object v0, p0, Ljava/util/-$$Lambda$2CyTD4Tuo1NS84gjxzFA3u1LWl0;->f$0:Ljava/util/function/Consumer;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
