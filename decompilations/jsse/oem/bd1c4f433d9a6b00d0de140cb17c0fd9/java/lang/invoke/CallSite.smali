.class public abstract Ljava/lang/invoke/CallSite;
.super Ljava/lang/Object;
.source "CallSite.java"


# static fields
.field private static GET_TARGET:Ljava/lang/invoke/MethodHandle;

.field private static final TARGET_OFFSET:J


# instance fields
.field target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 244
    const/4 v1, 0x0

    sput-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    .line 274
    :try_start_3
    sget-object v1, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, Ljava/lang/invoke/CallSite;

    const-string/jumbo v3, "target"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_15

    .line 87
    return-void

    .line 275
    :catch_15
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    .line 131
    iput-object p1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 135
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 136
    return-void
.end method

.method constructor <init>(Ljava/lang/invoke/MethodType;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 113
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "uninitialized call site"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    .line 112
    invoke-static {v0, v4, v1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 114
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-lez v0, :cond_37

    .line 115
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v4, v1}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 120
    :cond_37
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V
    .registers 7
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "createTargetHook"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    move-object v1, p0

    .line 151
    check-cast v1, Ljava/lang/invoke/ConstantCallSite;

    .line 152
    .local v1, "selfCCS":Ljava/lang/invoke/ConstantCallSite;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    .line 153
    .local v0, "boundTarget":Ljava/lang/invoke/MethodHandle;
    iget-object v2, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v2, v0}, Ljava/lang/invoke/CallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 154
    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 158
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 159
    return-void
.end method

.method private initializeGetTarget()V
    .registers 7

    .prologue
    .line 250
    const-class v2, Ljava/lang/invoke/CallSite;

    monitor-enter v2

    .line 251
    :try_start_3
    sget-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-nez v1, :cond_1a

    .line 253
    :try_start_7
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 254
    const-class v3, Ljava/lang/invoke/CallSite;

    const-string/jumbo v4, "getTarget"

    .line 255
    const-class v5, Ljava/lang/invoke/MethodHandle;

    invoke-static {v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 253
    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_1a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_1a} :catch_1c
    .catchall {:try_start_7 .. :try_end_1a} :catchall_23

    :cond_1a
    monitor-exit v2

    .line 261
    return-void

    .line 256
    :catch_1c
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_1d
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_23

    .line 250
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should be of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "oldTarget"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 211
    .local v1, "oldType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 212
    .local v0, "newType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 213
    invoke-static {p2, v1}, Ljava/lang/invoke/CallSite;->wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;

    move-result-object v2

    throw v2

    .line 214
    :cond_13
    return-void
.end method

.method public abstract dynamicInvoker()Ljava/lang/invoke/MethodHandle;
.end method

.method public abstract getTarget()Ljava/lang/invoke/MethodHandle;
.end method

.method getTargetVolatile()Ljava/lang/invoke/MethodHandle;
    .registers 5

    .prologue
    .line 286
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .prologue
    .line 238
    sget-object v2, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v2, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 239
    .local v0, "getTarget":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/CallSite;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/invoke/MethodHandles;->exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 240
    .local v1, "invoker":Ljava/lang/invoke/MethodHandle;
    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandles;->foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method public abstract setTarget(Ljava/lang/invoke/MethodHandle;)V
.end method

.method setTargetNormal(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 282
    iput-object p1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 283
    return-void
.end method

.method setTargetVolatile(Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .prologue
    .line 292
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 293
    return-void
.end method

.method public type()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method
