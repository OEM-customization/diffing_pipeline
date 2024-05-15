.class public Ljava/lang/invoke/Transformers$FilterReturnValue;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterReturnValue"
.end annotation


# instance fields
.field private final greylist-max-o allArgs:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o filter:Ljava/lang/invoke/MethodHandle;

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 5
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "filter"    # Ljava/lang/invoke/MethodHandle;

    .line 490
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 492
    iput-object p1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    .line 493
    iput-object p2, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    .line 495
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$FilterReturnValue;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->allArgs:Ldalvik/system/EmulatedStackFrame$Range;

    .line 496
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 9
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 504
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->allArgs:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 505
    iget-object v1, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v1, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 508
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 509
    .local v1, "returnValueReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 510
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->makeReturnValueAccessor()V

    .line 513
    iget-object v2, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-static {v2}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 514
    .local v2, "filterFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v3, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 515
    .local v3, "filterWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v3, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 517
    iget-object v4, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v4

    .line 518
    .local v4, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_4b

    .line 519
    invoke-virtual {v1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_aa

    .line 521
    :cond_4b
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_57

    .line 522
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v5

    invoke-virtual {v3, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_aa

    .line 523
    :cond_57
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_63

    .line 524
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v5

    invoke-virtual {v3, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_aa

    .line 525
    :cond_63
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_6f

    .line 526
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v5

    invoke-virtual {v3, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_aa

    .line 527
    :cond_6f
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_7b

    .line 528
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v5

    invoke-virtual {v3, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_aa

    .line 529
    :cond_7b
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_87

    .line 530
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v5

    invoke-virtual {v3, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_aa

    .line 531
    :cond_87
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_93

    .line 532
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_aa

    .line 533
    :cond_93
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_9f

    .line 534
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v5

    invoke-virtual {v3, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_aa

    .line 535
    :cond_9f
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_aa

    .line 536
    invoke-virtual {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 540
    :cond_aa
    :goto_aa
    iget-object v5, p0, Ljava/lang/invoke/Transformers$FilterReturnValue;->filter:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v5, v2}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 541
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 542
    return-void
.end method
