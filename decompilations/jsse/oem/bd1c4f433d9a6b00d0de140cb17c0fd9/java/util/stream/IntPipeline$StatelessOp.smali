.class public abstract Ljava/util/stream/IntPipeline$StatelessOp;
.super Ljava/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatelessOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/IntPipeline",
        "<TE_IN;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/stream/IntPipeline$StatelessOp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/stream/IntPipeline$StatelessOp;->-assertionsDisabled:Z

    .line 584
    return-void
.end method

.method public constructor <init>(Ljava/util/stream/AbstractPipeline;Ljava/util/stream/StreamShape;I)V
    .registers 5
    .param p2, "inputShape"    # Ljava/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/AbstractPipeline",
            "<*TE_IN;*>;",
            "Ljava/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Ljava/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    .local p1, "upstream":Ljava/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Ljava/util/stream/IntPipeline;-><init>(Ljava/util/stream/AbstractPipeline;I)V

    .line 596
    sget-boolean v0, Ljava/util/stream/IntPipeline$StatelessOp;->-assertionsDisabled:Z

    if-nez v0, :cond_13

    invoke-virtual {p1}, Ljava/util/stream/AbstractPipeline;->getOutputShape()Ljava/util/stream/StreamShape;

    move-result-object v0

    if-eq v0, p2, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 597
    :cond_13
    return-void
.end method


# virtual methods
.method public final opIsStateful()Z
    .registers 2

    .prologue
    .line 601
    .local p0, "this":Ljava/util/stream/IntPipeline$StatelessOp;, "Ljava/util/stream/IntPipeline$StatelessOp<TE_IN;>;"
    const/4 v0, 0x0

    return v0
.end method
