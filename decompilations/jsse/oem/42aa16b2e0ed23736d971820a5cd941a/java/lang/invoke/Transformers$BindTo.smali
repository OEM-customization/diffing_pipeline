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
.field private final greylist-max-o delegate:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o range:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o receiver:Ljava/lang/Object;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/Object;)V
    .registers 6
    .param p1, "delegate"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "receiver"    # Ljava/lang/Object;

    .line 454
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/invoke/MethodType;->dropParameterTypes(II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 456
    iput-object p1, p0, Ljava/lang/invoke/Transformers$BindTo;->delegate:Ljava/lang/invoke/MethodHandle;

    .line 457
    iput-object p2, p0, Ljava/lang/invoke/Transformers$BindTo;->receiver:Ljava/lang/Object;

    .line 459
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$BindTo;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$BindTo;->range:Ldalvik/system/EmulatedStackFrame$Range;

    .line 460
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 6
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Ljava/lang/invoke/Transformers$BindTo;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 469
    .local v0, "stackFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$BindTo;->receiver:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    .line 471
    iget-object v1, p0, Ljava/lang/invoke/Transformers$BindTo;->range:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 475
    iget-object v1, p0, Ljava/lang/invoke/Transformers$BindTo;->delegate:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 476
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 477
    return-void
.end method
