.class public abstract Ljava/lang/invoke/CallSite;
.super Ljava/lang/Object;
.source "CallSite.java"


# static fields
.field private static greylist-max-o GET_TARGET:Ljava/lang/invoke/MethodHandle;

.field private static final greylist-max-o TARGET_OFFSET:J


# instance fields
.field greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 244
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    .line 274
    :try_start_3
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    const-class v1, Ljava/lang/invoke/CallSite;

    const-string v2, "target"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_15

    .line 275
    nop

    .line 276
    return-void

    .line 275
    :catch_15
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

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

.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/IllegalStateException;

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandles;->throwException(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "uninitialized call site"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v3, v1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 114
    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 115
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v3, v1}, Ljava/lang/invoke/MethodHandles;->dropArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 120
    :cond_34
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 121
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "targetType"    # Ljava/lang/invoke/MethodType;
    .param p2, "createTargetHook"    # Ljava/lang/invoke/MethodHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Ljava/lang/invoke/CallSite;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 151
    move-object v0, p0

    check-cast v0, Ljava/lang/invoke/ConstantCallSite;

    .line 152
    .local v0, "selfCCS":Ljava/lang/invoke/ConstantCallSite;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/invoke/MethodHandle;

    .line 153
    .local v1, "boundTarget":Ljava/lang/invoke/MethodHandle;
    iget-object v2, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {p0, v2, v1}, Ljava/lang/invoke/CallSite;->checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V

    .line 154
    iput-object v1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 158
    invoke-direct {p0}, Ljava/lang/invoke/CallSite;->initializeGetTarget()V

    .line 159
    return-void
.end method

.method private greylist-max-o initializeGetTarget()V
    .registers 5

    .line 250
    const-class v0, Ljava/lang/invoke/CallSite;

    monitor-enter v0

    .line 251
    :try_start_3
    sget-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_21

    if-nez v1, :cond_1f

    .line 253
    :try_start_7
    sget-object v1, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    const-string v2, "getTarget"

    const-class v3, Ljava/lang/invoke/MethodHandle;

    .line 255
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 254
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    sput-object v1, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_17} :catch_18
    .catchall {:try_start_7 .. :try_end_17} :catchall_21

    .line 258
    goto :goto_1f

    .line 256
    :catch_18
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :try_start_19
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/lang/invoke/CallSite;
    throw v2

    .line 260
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local p0    # "this":Ljava/lang/invoke/CallSite;
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private static greylist-max-o wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;
    .registers 5
    .param p0, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p1, "type"    # Ljava/lang/invoke/MethodType;

    .line 217
    new-instance v0, Ljava/lang/invoke/WrongMethodTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should be of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/invoke/WrongMethodTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method greylist-max-o checkTargetChange(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)V
    .registers 6
    .param p1, "oldTarget"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .line 210
    invoke-virtual {p1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 211
    .local v0, "oldType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p2}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 212
    .local v1, "newType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v1, v0}, Ljava/lang/invoke/MethodType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 214
    return-void

    .line 213
    :cond_f
    invoke-static {p2, v0}, Ljava/lang/invoke/CallSite;->wrongTargetType(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/WrongMethodTypeException;

    move-result-object v2

    throw v2
.end method

.method public abstract whitelist core-platform-api test-api dynamicInvoker()Ljava/lang/invoke/MethodHandle;
.end method

.method public abstract whitelist core-platform-api test-api getTarget()Ljava/lang/invoke/MethodHandle;
.end method

.method greylist-max-o getTargetVolatile()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .line 286
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandle;

    return-object v0
.end method

.method greylist-max-o makeDynamicInvoker()Ljava/lang/invoke/MethodHandle;
    .registers 4

    .line 238
    sget-object v0, Ljava/lang/invoke/CallSite;->GET_TARGET:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0, p0}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 239
    .local v0, "getTarget":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/invoke/CallSite;->type()Ljava/lang/invoke/MethodType;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandles;->exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 240
    .local v1, "invoker":Ljava/lang/invoke/MethodHandle;
    invoke-static {v1, v0}, Ljava/lang/invoke/MethodHandles;->foldArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2
.end method

.method public abstract whitelist core-platform-api test-api setTarget(Ljava/lang/invoke/MethodHandle;)V
.end method

.method greylist-max-o setTargetNormal(Ljava/lang/invoke/MethodHandle;)V
    .registers 2
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .line 282
    iput-object p1, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    .line 283
    return-void
.end method

.method greylist-max-o setTargetVolatile(Ljava/lang/invoke/MethodHandle;)V
    .registers 5
    .param p1, "newTarget"    # Ljava/lang/invoke/MethodHandle;

    .line 292
    sget-object v0, Ljava/lang/invoke/MethodHandleStatics;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/lang/invoke/CallSite;->TARGET_OFFSET:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 293
    return-void
.end method

.method public whitelist core-platform-api test-api type()Ljava/lang/invoke/MethodType;
    .registers 2

    .line 170
    iget-object v0, p0, Ljava/lang/invoke/CallSite;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    return-object v0
.end method
