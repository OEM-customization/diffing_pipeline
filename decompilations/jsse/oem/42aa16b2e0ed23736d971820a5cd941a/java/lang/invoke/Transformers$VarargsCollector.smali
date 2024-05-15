.class Ljava/lang/invoke/Transformers$VarargsCollector;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VarargsCollector"
.end annotation


# instance fields
.field final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 645
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;I)V

    .line 646
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->lastParameterTypeIsAnArray([Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 649
    iput-object p1, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    .line 650
    return-void

    .line 647
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target does not have array as last parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o arityArgumentsConvertible([Ljava/lang/Class;ILjava/lang/Class;)Z
    .registers 6
    .param p1, "arityStart"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 713
    .local p0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne v0, p1, :cond_16

    .line 714
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_16

    aget-object v0, p0, p1

    .line 715
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_16

    .line 718
    return v1

    .line 722
    :cond_16
    move v0, p1

    .local v0, "i":I
    :goto_17
    array-length v2, p0

    if-ge v0, v2, :cond_27

    .line 723
    aget-object v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 724
    const/4 v1, 0x0

    return v1

    .line 722
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 727
    .end local v0    # "i":I
    :cond_27
    return v1
.end method

.method private static greylist-max-o booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 831
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [Z

    .line 832
    .local v0, "arityArray":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_27

    .line 833
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 834
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1e

    .line 837
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v0, v1

    goto :goto_24

    .line 835
    :cond_1e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 832
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 841
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method private static greylist-max-o byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 788
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [B

    .line 789
    .local v0, "arityArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_27

    .line 790
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 791
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_1e

    .line 793
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    goto :goto_24

    .line 792
    :cond_1e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    aput-byte v3, v0, v1

    .line 789
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 796
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method private static greylist-max-o charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 815
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [C

    .line 816
    .local v0, "arityArray":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_27

    .line 817
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 818
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x43

    if-eq v3, v4, :cond_1e

    .line 821
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    aput-char v3, v0, v1

    goto :goto_24

    .line 819
    :cond_1e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v3

    aput-char v3, v0, v1

    .line 816
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 826
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method public static greylist-max-o collectArguments(CLjava/lang/Class;Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "basicComponentType"    # C
    .param p2, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p4, "startIdx"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/Class<",
            "*>;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 920
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/16 v0, 0x46

    if-eq p0, v0, :cond_5a

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_55

    const/16 v0, 0x53

    if-eq p0, v0, :cond_50

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_4b

    const/16 v0, 0x49

    if-eq p0, v0, :cond_46

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_41

    packed-switch p0, :pswitch_data_60

    .line 931
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :pswitch_32
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 926
    :pswitch_37
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 924
    :pswitch_3c
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 923
    :cond_41
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 922
    :cond_46
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 927
    :cond_4b
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 925
    :cond_50
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 921
    :cond_55
    invoke-static {p2, p3, p1, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 928
    :cond_5a
    invoke-static {p2, p3, p4, p5}, Ljava/lang/invoke/Transformers$VarargsCollector;->floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x42
        :pswitch_3c
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method

.method private static greylist-max-o copyParameter(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V
    .registers 6
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 936
    .local p2, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_76

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6e

    const/16 v1, 0x53

    if-eq v0, v1, :cond_66

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_5e

    const/16 v1, 0x49

    if-eq v0, v1, :cond_56

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_4e

    packed-switch v0, :pswitch_data_7e

    .line 946
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 945
    :pswitch_36
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_7d

    .line 942
    :pswitch_3e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_7d

    .line 940
    :pswitch_46
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_7d

    .line 939
    :cond_4e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_7d

    .line 938
    :cond_56
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_7d

    .line 943
    :cond_5e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_7d

    .line 941
    :cond_66
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_7d

    .line 937
    :cond_6e
    invoke-virtual {p0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_7d

    .line 944
    :cond_76
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 948
    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x42
        :pswitch_46
        :pswitch_3e
        :pswitch_36
    .end packed-switch
.end method

.method private static greylist-max-o doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 866
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [D

    .line 867
    .local v0, "arityArray":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_63

    .line 868
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 869
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_59

    const/16 v4, 0x44

    if-eq v3, v4, :cond_52

    const/16 v4, 0x46

    if-eq v3, v4, :cond_4a

    const/16 v4, 0x53

    if-eq v3, v4, :cond_42

    const/16 v4, 0x49

    if-eq v3, v4, :cond_3a

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_32

    .line 877
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v0, v1

    goto :goto_60

    .line 872
    :cond_32
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v3

    long-to-double v3, v3

    aput-wide v3, v0, v1

    goto :goto_60

    .line 873
    :cond_3a
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v1

    goto :goto_60

    .line 874
    :cond_42
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v1

    goto :goto_60

    .line 871
    :cond_4a
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    aput-wide v3, v0, v1

    goto :goto_60

    .line 870
    :cond_52
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v3

    aput-wide v3, v0, v1

    goto :goto_60

    .line 875
    :cond_59
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v1

    .line 867
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 882
    .end local v1    # "i":I
    :cond_63
    return-object v0
.end method

.method private static greylist-max-o floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 846
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [F

    .line 847
    .local v0, "arityArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_57

    .line 848
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 849
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_4d

    const/16 v4, 0x46

    if-eq v3, v4, :cond_46

    const/16 v4, 0x53

    if-eq v3, v4, :cond_3e

    const/16 v4, 0x49

    if-eq v3, v4, :cond_36

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_2e

    .line 856
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v1

    goto :goto_54

    .line 851
    :cond_2e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v3

    long-to-float v3, v3

    aput v3, v0, v1

    goto :goto_54

    .line 852
    :cond_36
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v1

    goto :goto_54

    .line 853
    :cond_3e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v1

    goto :goto_54

    .line 850
    :cond_46
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v3

    aput v3, v0, v1

    goto :goto_54

    .line 854
    :cond_4d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v1

    .line 847
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 861
    .end local v1    # "i":I
    :cond_57
    return-object v0
.end method

.method private static greylist-max-o intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 754
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [I

    .line 755
    .local v0, "arityArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_3d

    .line 756
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 757
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_34

    const/16 v4, 0x49

    if-eq v3, v4, :cond_2d

    const/16 v4, 0x53

    if-eq v3, v4, :cond_26

    .line 762
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    goto :goto_3a

    .line 759
    :cond_26
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    aput v3, v0, v1

    goto :goto_3a

    .line 758
    :cond_2d
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    aput v3, v0, v1

    goto :goto_3a

    .line 760
    :cond_34
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    aput v3, v0, v1

    .line 755
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 767
    .end local v1    # "i":I
    :cond_3d
    return-object v0
.end method

.method private static greylist-max-o lastParameterTypeIsAnArray([Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 653
    .local p0, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    return v0

    .line 654
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 772
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [J

    .line 773
    .local v0, "arityArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_4b

    .line 774
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 775
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_41

    const/16 v4, 0x53

    if-eq v3, v4, :cond_39

    const/16 v4, 0x49

    if-eq v3, v4, :cond_31

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_2a

    .line 780
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    goto :goto_48

    .line 776
    :cond_2a
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v3

    aput-wide v3, v0, v1

    goto :goto_48

    .line 777
    :cond_31
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v1

    goto :goto_48

    .line 778
    :cond_39
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v1

    goto :goto_48

    .line 779
    :cond_41
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v1

    .line 773
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 783
    .end local v1    # "i":I
    :cond_4b
    return-object v0
.end method

.method private static greylist-max-o makeArityArray(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame$StackFrameReader;ILjava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .param p0, "callerFrameType"    # Ljava/lang/invoke/MethodType;
    .param p1, "callerFrameReader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "indexOfArityArray"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "I",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 889
    .local p3, "arityArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, p2

    .line 890
    .local v0, "arityArrayLength":I
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 891
    .local v1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 893
    .local v2, "callerPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    .line 894
    .local v3, "elementBasicType":C
    const/16 v4, 0x46

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_67

    const/16 v4, 0x53

    if-eq v3, v4, :cond_62

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5d

    const/16 v4, 0x49

    if-eq v3, v4, :cond_58

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_53

    packed-switch v3, :pswitch_data_72

    .line 914
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 911
    :pswitch_44
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->doubleArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 905
    :pswitch_49
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->charArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 901
    :pswitch_4e
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->byteArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 899
    :cond_53
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->longArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 897
    :cond_58
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->intArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 907
    :cond_5d
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->booleanArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 903
    :cond_62
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 895
    :cond_67
    invoke-static {p1, v2, v1, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 909
    :cond_6c
    invoke-static {p1, v2, p2, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;->floatArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_72
    .packed-switch 0x42
        :pswitch_4e
        :pswitch_49
        :pswitch_44
    .end packed-switch
.end method

.method private static greylist-max-o makeTargetFrameType(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 7
    .param p0, "callerType"    # Ljava/lang/invoke/MethodType;
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;

    .line 983
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 984
    .local v0, "ptypesLength":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 986
    .local v1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 989
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 990
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o prepareFrame(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V
    .registers 8
    .param p0, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .param p1, "targetFrame"    # Ldalvik/system/EmulatedStackFrame;

    .line 952
    new-instance v0, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v0}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 953
    .local v0, "targetWriter":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 954
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameReader;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;-><init>()V

    .line 955
    .local v1, "callerReader":Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    invoke-virtual {v1, p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->attach(Ldalvik/system/EmulatedStackFrame;)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 958
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 959
    .local v2, "targetMethodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 960
    .local v3, "indexOfArityArray":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_2a

    .line 961
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v4

    .line 962
    .local v5, "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v0, v5}, Ljava/lang/invoke/Transformers$VarargsCollector;->copyParameter(Ldalvik/system/EmulatedStackFrame$StackFrameReader;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/Class;)V

    .line 960
    .end local v5    # "ptype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 966
    .end local v4    # "i":I
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v3

    .line 967
    .local v4, "arityArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v5, v1, v3, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->makeArityArray(Ljava/lang/invoke/MethodType;Ldalvik/system/EmulatedStackFrame$StackFrameReader;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .line 969
    .local v5, "arityArray":Ljava/lang/Object;
    invoke-virtual {v0, v5, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 970
    return-void
.end method

.method private static greylist-max-o referenceArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 11
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 732
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2, p4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 733
    .local v0, "arityArray":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p4, :cond_82

    .line 734
    add-int v2, v1, p3

    aget-object v2, p1, v2

    .line 735
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 736
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    const/16 v5, 0x46

    if-eq v4, v5, :cond_70

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_6b

    const/16 v5, 0x53

    if-eq v4, v5, :cond_62

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_59

    const/16 v5, 0x49

    if-eq v4, v5, :cond_50

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_47

    packed-switch v4, :pswitch_data_84

    goto :goto_78

    .line 745
    :pswitch_2c
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_78

    .line 742
    :pswitch_35
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextChar()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    goto :goto_78

    .line 740
    :pswitch_3e
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    goto :goto_78

    .line 739
    :cond_47
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_78

    .line 738
    :cond_50
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_78

    .line 743
    :cond_59
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextBoolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_78

    .line 741
    :cond_62
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    goto :goto_78

    .line 737
    :cond_6b
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_78

    .line 744
    :cond_70
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 747
    :goto_78
    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 733
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 749
    .end local v1    # "i":I
    :cond_82
    return-object v0

    nop

    :pswitch_data_84
    .packed-switch 0x42
        :pswitch_3e
        :pswitch_35
        :pswitch_2c
    .end packed-switch
.end method

.method private static greylist-max-o shortArray(Ldalvik/system/EmulatedStackFrame$StackFrameReader;[Ljava/lang/Class;II)Ljava/lang/Object;
    .registers 9
    .param p0, "reader"    # Ldalvik/system/EmulatedStackFrame$StackFrameReader;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldalvik/system/EmulatedStackFrame$StackFrameReader;",
            "[",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 801
    .local p1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-array v0, p3, [S

    .line 802
    .local v0, "arityArray":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p3, :cond_33

    .line 803
    add-int v2, v1, p2

    aget-object v2, p1, v2

    .line 804
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_29

    const/16 v4, 0x53

    if-eq v3, v4, :cond_22

    .line 807
    invoke-virtual {p0, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextReference(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v0, v1

    goto :goto_30

    .line 805
    :cond_22
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextShort()S

    move-result v3

    aput-short v3, v0, v1

    goto :goto_30

    .line 806
    :cond_29
    invoke-virtual {p0}, Ldalvik/system/EmulatedStackFrame$StackFrameReader;->nextByte()B

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v1

    .line 802
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 810
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method private static greylist-max-o throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V
    .registers 5
    .param p0, "from"    # Ljava/lang/invoke/MethodType;
    .param p1, "to"    # Ljava/lang/invoke/MethodType;

    .line 708
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api asFixedArity()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .line 661
    iget-object v0, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public whitelist core-platform-api test-api isVarargsCollector()Z
    .registers 2

    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 665
    invoke-virtual {p1}, Ldalvik/system/EmulatedStackFrame;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 666
    .local v0, "callerFrameType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    .line 667
    .local v1, "callerPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 669
    .local v2, "targetPTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 670
    .local v3, "lastTargetIndex":I
    array-length v4, v1

    array-length v5, v2

    if-ne v4, v5, :cond_28

    aget-object v4, v2, v3

    aget-object v5, v1, v3

    .line 671
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 675
    iget-object v4, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v4, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 676
    return-void

    .line 679
    :cond_28
    array-length v4, v1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_35

    .line 681
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 684
    :cond_35
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/invoke/MethodType;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 686
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 689
    :cond_4e
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 690
    .local v4, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v3, v4}, Ljava/lang/invoke/Transformers$VarargsCollector;->arityArgumentsConvertible([Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 692
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/invoke/Transformers$VarargsCollector;->throwWrongMethodTypeException(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)V

    .line 696
    :cond_61
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$VarargsCollector;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/invoke/Transformers$VarargsCollector;->makeTargetFrameType(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 697
    .local v5, "targetFrameType":Ljava/lang/invoke/MethodType;
    invoke-static {v5}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v6

    .line 698
    .local v6, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-static {p1, v6}, Ljava/lang/invoke/Transformers$VarargsCollector;->prepareFrame(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame;)V

    .line 701
    iget-object v7, p0, Ljava/lang/invoke/Transformers$VarargsCollector;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v7, v6}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 704
    invoke-virtual {v6, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 705
    return-void
.end method
