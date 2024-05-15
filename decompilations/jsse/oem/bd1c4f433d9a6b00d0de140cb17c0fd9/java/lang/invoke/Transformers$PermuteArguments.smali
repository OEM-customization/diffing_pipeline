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
.field private final reorder:[I

.field private final target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method public constructor <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;[I)V
    .registers 4
    .param p1, "type"    # Ljava/lang/invoke/MethodType;
    .param p2, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p3, "reorder"    # [I

    .prologue
    .line 554
    invoke-direct {p0, p1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 556
    iput-object p2, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    .line 557
    iput-object p3, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    .line 558
    return-void
.end method


# virtual methods
.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 14
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 562
    new-instance v7, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 563
    .local v7, "reader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v7, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 569
    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    array-length v9, v9

    new-array v1, v9, [Ljava/lang/Object;

    .line 570
    .local v1, "arguments":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$PermuteArguments;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v6

    .line 571
    .local v6, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v9, v6

    if-ge v3, v9, :cond_bc

    .line 572
    aget-object v5, v6, v3

    .line 573
    .local v5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_2a

    .line 574
    invoke-virtual {v7, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v1, v3

    .line 571
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 575
    :cond_2a
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_39

    .line 576
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 577
    :cond_39
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_48

    .line 578
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v9

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 579
    :cond_48
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_57

    .line 580
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 581
    :cond_57
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_66

    .line 582
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 583
    :cond_66
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_75

    .line 584
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 585
    :cond_75
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_84

    .line 586
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 587
    :cond_84
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_93

    .line 588
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 589
    :cond_93
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_a2

    .line 590
    invoke-virtual {v7}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v1, v3

    goto :goto_27

    .line 592
    :cond_a2
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 596
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_bc
    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v9}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v9

    invoke-static {v9}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v2

    .line 597
    .local v2, "calleeFrame":Ldalvik/system/EmulatedStackFrame;
    new-instance v8, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v8}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 598
    .local v8, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v8, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 600
    const/4 v3, 0x0

    :goto_cf
    array-length v9, v6

    if-ge v3, v9, :cond_170

    .line 601
    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->reorder:[I

    aget v4, v9, v3

    .line 602
    .local v4, "idx":I
    aget-object v5, v6, v4

    .line 603
    .restart local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v0, v1, v4

    .line 605
    .local v0, "argument":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_e6

    .line 606
    invoke-virtual {v8, v0, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 600
    .end local v0    # "argument":Ljava/lang/Object;
    :goto_e3
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    .line 607
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_e6
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_f4

    .line 608
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_e3

    .line 609
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_f4
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_102

    .line 610
    check-cast v0, Ljava/lang/Byte;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_e3

    .line 611
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_102
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_110

    .line 612
    check-cast v0, Ljava/lang/Character;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_e3

    .line 613
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_110
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_11e

    .line 614
    check-cast v0, Ljava/lang/Short;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_e3

    .line 615
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_11e
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_12c

    .line 616
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_e3

    .line 617
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_12c
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_13a

    .line 618
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_e3

    .line 619
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_13a
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_148

    .line 620
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8, v9}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_e3

    .line 621
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_148
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v5, v9, :cond_156

    .line 622
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "argument":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_e3

    .line 624
    .restart local v0    # "argument":Ljava/lang/Object;
    :cond_156
    new-instance v9, Ljava/lang/AssertionError;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 628
    .end local v0    # "argument":Ljava/lang/Object;
    .end local v4    # "idx":I
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_170
    iget-object v9, p0, Ljava/lang/invoke/Transformers$PermuteArguments;->target:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    goto/16 :goto_12dd

    .line 629
    invoke-virtual {v2, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 630
    return-void
    :goto_12dd
.end method
