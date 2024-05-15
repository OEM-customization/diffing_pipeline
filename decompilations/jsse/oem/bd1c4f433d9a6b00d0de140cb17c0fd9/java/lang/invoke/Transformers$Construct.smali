.class Ljava/lang/invoke/Transformers$Construct;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Construct"
.end annotation


# instance fields
.field private final callerRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final constructorHandle:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V
    .registers 4
    .param p1, "constructorHandle"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "returnedType"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 397
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 398
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    .line 399
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Construct;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame$Range;->all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Construct;->callerRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 400
    return-void
.end method

.method private static checkInstantiable(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Ljava/lang/invoke/Transformers$Construct;->isAbstract(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 412
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string/jumbo v0, "interface "

    .line 413
    .local v0, "s":Ljava/lang/String;
    :goto_f
    new-instance v1, Ljava/lang/InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t instantiate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    .end local v0    # "s":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v0, "abstract class "

    .restart local v0    # "s":Ljava/lang/String;
    goto :goto_f

    .line 415
    .end local v0    # "s":Ljava/lang/String;
    :cond_31
    return-void
.end method

.method private static isAbstract(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method getConstructorHandle()Ljava/lang/invoke/MethodHandle;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method public transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 8
    .param p1, "emulatedStackFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 419
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Construct;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    .line 420
    .local v2, "receiverType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Ljava/lang/invoke/Transformers$Construct;->checkInstantiable(Ljava/lang/Class;)V

    .line 423
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v3

    invoke-virtual {v3, v2}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 431
    .local v1, "receiver":Ljava/lang/Object;
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v3}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 432
    .local v0, "constructorFrame":Ldalvik/system/EmulatedStackFrame;
    invoke-virtual {v0, v5, v1}, Ldalvik/system/EmulatedStackFrame;->setReference(ILjava/lang/Object;)V

    .line 433
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Construct;->callerRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4, v5}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 434
    iget-object v3, p0, Ljava/lang/invoke/Transformers$Construct;->constructorHandle:Ljava/lang/invoke/MethodHandle;

    #unknown opcode: 0xfa
    nop

    #unknown opcode: 0x7a
    nop

    move/16 p4451, p8296

    .line 437
    if-ltz v1, :cond_45

    .line 438
    return-void
    :cond_45
.end method
