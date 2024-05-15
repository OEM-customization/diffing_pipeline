.class public final synthetic Ljava/util/stream/-$$Lambda$AbstractPipeline$i18ybop3uEZwLQyKh7zmnuTXiFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Spliterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Spliterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/-$$Lambda$AbstractPipeline$i18ybop3uEZwLQyKh7zmnuTXiFw;->f$0:Ljava/util/Spliterator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljava/util/stream/-$$Lambda$AbstractPipeline$i18ybop3uEZwLQyKh7zmnuTXiFw;->f$0:Ljava/util/Spliterator;

    invoke-static {v0}, Ljava/util/stream/AbstractPipeline;->lambda$wrapSpliterator$1(Ljava/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
