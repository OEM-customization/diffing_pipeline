.class public Ljava/lang/invoke/Transformers$BindTo;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindTo"
.end annotation


# instance fields
.field private final delegate:Ljava/lang/invoke/MethodHandle;

.field private final range:Ldalvik/system/EmulatedStackFrame$Range;

.field private final receiver:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)V
    .registers 6
    .param p1, "delegate"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 455
    iput-object p1, p0, Ljava/lang/invoke/Transformers$BindTo;->delegate:Ljava/lang/invoke/MethodHandle;

    .line 456
    iput-object p2, p0, Ljava/lang/invoke/Transformers$BindTo;->receiver:Ljava/lang/Object;

    .line 458
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$BindTo;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$BindTo;->range:Ldalvik/system/EmulatedStackFrame$Range;

    .line 459
    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 6
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 465
    iget-object v1, p0, Ljava/lang/invoke/Transformers$BindTo;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 468
    .local v0, "stackFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$BindTo;->receiver:Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    .line 470
    iget-object v1, p0, Ljava/lang/invoke/Transformers$BindTo;->range:Ldalvik/system/EmulatedStackFrame$Range;

    .line 471
    const/4 v2, 0x1

    .line 470
    invoke-virtual {p1, v0, v1, v2, v3}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 474
    iget-object v1, p0, Ljava/lang/invoke/Transformers$BindTo;->delegate:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    move v0, v0

    sput-object p13, Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;->$INST$1:Ljava/util/stream/-$Lambda$RbwyEXxBvlOKovrx1LFomyWq0zc;

    .line 475
    if-ne v1, v0, :cond_6d

    .line 476
    return-void
    :cond_6d
.end method
