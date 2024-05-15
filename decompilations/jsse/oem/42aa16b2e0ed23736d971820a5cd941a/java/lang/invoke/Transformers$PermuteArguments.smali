.class public Ljava/lang/invoke/Transformers$PermuteArguments;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermuteArguments"
.end annotation


# instance fields
.field private final greylist-max-o reorder:[I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V
    .registers 4
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "reorder"    # [I

    .line 555
    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 557
    iput-object p2, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 558
    iput-object p3, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    .line 559
    return-void
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 14
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 563
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 564
    .local v0, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 570
    iget-object v1, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 571
    .local v1, "arguments":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$PermuteArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 572
    .local v2, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v2

    const-string v5, "Unexpected type: "

    if-ge v3, v4, :cond_bb

    .line 573
    aget-object v4, v2, v3

    .line 574
    .local v4, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 575
    invoke-virtual {v0, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v3

    goto/16 :goto_a2

    .line 576
    :cond_2b
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_3a

    .line 577
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_a2

    .line 578
    :cond_3a
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_49

    .line 579
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_a2

    .line 580
    :cond_49
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_58

    .line 581
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_a2

    .line 582
    :cond_58
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_67

    .line 583
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_a2

    .line 584
    :cond_67
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_76

    .line 585
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_a2

    .line 586
    :cond_76
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_85

    .line 587
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_a2

    .line 588
    :cond_85
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_94

    .line 589
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v3

    goto :goto_a2

    .line 590
    :cond_94
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_a6

    .line 591
    invoke-virtual {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v3

    .line 572
    .end local v4    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    .line 593
    .restart local v4    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a6
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 597
    .end local v3    # "i":I
    .end local v4    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_bb
    iget-object v3, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v3

    .line 598
    .local v3, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v4, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 599
    .local v4, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v4, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 601
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_ce
    array-length v7, v2

    if-ge v6, v7, :cond_174

    .line 602
    iget-object v7, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    aget v7, v7, v6

    .line 603
    .local v7, "idx":I
    aget-object v8, v2, v7

    .line 604
    .local v8, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v9, v1, v7

    .line 606
    .local v9, "argument":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-nez v10, :cond_e4

    .line 607
    invoke-virtual {v4, v9, v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_15b

    .line 608
    :cond_e4
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_f3

    .line 609
    move-object v10, v9

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v4, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_15b

    .line 610
    :cond_f3
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_102

    .line 611
    move-object v10, v9

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    invoke-virtual {v4, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_15b

    .line 612
    :cond_102
    sget-object v10, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_111

    .line 613
    move-object v10, v9

    check-cast v10, Ljava/lang/Character;

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-virtual {v4, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_15b

    .line 614
    :cond_111
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_120

    .line 615
    move-object v10, v9

    check-cast v10, Ljava/lang/Short;

    invoke-virtual {v10}, Ljava/lang/Short;->shortValue()S

    move-result v10

    invoke-virtual {v4, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_15b

    .line 616
    :cond_120
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_12f

    .line 617
    move-object v10, v9

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_15b

    .line 618
    :cond_12f
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_13e

    .line 619
    move-object v10, v9

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_15b

    .line 620
    :cond_13e
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_14d

    .line 621
    move-object v10, v9

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v4, v10}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_15b

    .line 622
    :cond_14d
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v10, :cond_15f

    .line 623
    move-object v10, v9

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 601
    .end local v7    # "idx":I
    .end local v8    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "argument":Ljava/lang/Object;
    :goto_15b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_ce

    .line 625
    .restart local v7    # "idx":I
    .restart local v8    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "argument":Ljava/lang/Object;
    :cond_15f
    new-instance v10, Ljava/lang/AssertionError;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 629
    .end local v6    # "i":I
    .end local v7    # "idx":I
    .end local v8    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "argument":Ljava/lang/Object;
    :cond_174
    iget-object v5, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v5, v3}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 630
    invoke-virtual {v3, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 631
    return-void
.end method
