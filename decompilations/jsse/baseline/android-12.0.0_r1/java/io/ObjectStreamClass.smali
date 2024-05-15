.class public Ljava/io/ObjectStreamClass;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectStreamClass$WeakClassKey;,
        Ljava/io/ObjectStreamClass$FieldReflectorKey;,
        Ljava/io/ObjectStreamClass$FieldReflector;,
        Ljava/io/ObjectStreamClass$MemberSignature;,
        Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;,
        Ljava/io/ObjectStreamClass$ClassDataSlot;,
        Ljava/io/ObjectStreamClass$EntryFuture;,
        Ljava/io/ObjectStreamClass$ExceptionInfo;,
        Ljava/io/ObjectStreamClass$Caches;
    }
.end annotation


# static fields
.field static final greylist-max-o MAX_SDK_TARGET_FOR_CLINIT_UIDGEN_WORKAROUND:I = 0x17

.field public static final whitelist test-api NO_FIELDS:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x54f190e511018478L

.field public static blacklist suidCompatibilityListener:Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;


# instance fields
.field private greylist-max-o cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o cons:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

.field private greylist-max-o defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private greylist-max-o deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private greylist-max-o externalizable:Z

.field private greylist-max-o fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

.field private greylist fields:[Ljava/io/ObjectStreamField;

.field private greylist-max-o hasBlockExternalData:Z

.field private greylist-max-o hasWriteObjectData:Z

.field private greylist-max-o initialized:Z

.field private greylist-max-o isEnum:Z

.field private greylist-max-o isProxy:Z

.field private greylist-max-o localDesc:Ljava/io/ObjectStreamClass;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o numObjFields:I

.field private greylist-max-o primDataSize:I

.field private greylist-max-o readObjectMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o readObjectNoDataMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o readResolveMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o resolveEx:Ljava/lang/ClassNotFoundException;

.field private greylist-max-o serializable:Z

.field private greylist-max-o serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

.field private volatile greylist-max-o suid:Ljava/lang/Long;

.field private greylist-max-o superDesc:Ljava/io/ObjectStreamClass;

.field private greylist-max-o writeObjectMethod:Ljava/lang/reflect/Method;

.field private greylist-max-o writeReplaceMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 79
    sput-object v0, Ljava/io/ObjectStreamClass;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1924
    sget-object v0, Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;->INSTANCE:Ljava/io/ObjectStreamClass$$ExternalSyntheticLambda0;

    sput-object v0, Ljava/io/ObjectStreamClass;->suidCompatibilityListener:Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 556
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 467
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 468
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 469
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 470
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 471
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 472
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 473
    const-class v1, Ljava/io/Externalizable;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 475
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 476
    .local v1, "superCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_38

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 477
    iput-object p0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 479
    iget-boolean v2, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v2, :cond_4a

    .line 480
    new-instance v2, Ljava/io/ObjectStreamClass$2;

    invoke-direct {v2, p0, p1}, Ljava/io/ObjectStreamClass$2;-><init>(Ljava/io/ObjectStreamClass;Ljava/lang/Class;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto :goto_56

    .line 524
    :cond_4a
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 525
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 529
    :goto_56
    :try_start_56
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    invoke-static {v2, p0}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;
    :try_end_5e
    .catch Ljava/io/InvalidClassException; {:try_start_56 .. :try_end_5e} :catch_a1

    .line 533
    nop

    .line 535
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v2, :cond_82

    .line 536
    iget-boolean v2, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v2, :cond_73

    .line 537
    new-instance v2, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v4, "enum type"

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    goto :goto_82

    .line 538
    :cond_73
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_82

    .line 539
    new-instance v2, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v4, "no valid constructor"

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 542
    :cond_82
    :goto_82
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_83
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v4, v3

    if-ge v2, v4, :cond_9e

    .line 543
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_9b

    .line 544
    new-instance v3, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v5, "unmatched serializable field(s) declared"

    invoke-direct {v3, v4, v5}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 542
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_83

    .line 548
    .end local v2    # "i":I
    :cond_9e
    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    .line 549
    return-void

    .line 530
    :catch_a1
    move-exception v0

    .line 532
    .local v0, "ex":Ljava/io/InvalidClassException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic blacklist access$000(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;

    .line 72
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/lang/Class;)J
    .registers 3
    .param p0, "x0"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->computeDefaultSUID(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$1002(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    return-object p1
.end method

.method static synthetic blacklist access$1102(Ljava/io/ObjectStreamClass;Ljava/io/ObjectStreamClass$ExceptionInfo;)Ljava/io/ObjectStreamClass$ExceptionInfo;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    return-object p1
.end method

.method static synthetic blacklist access$1200(Ljava/io/ObjectStreamClass;)Z
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;

    .line 72
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    return v0
.end method

.method static synthetic blacklist access$1302(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/lang/reflect/Constructor;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    return-object p1
.end method

.method static synthetic blacklist access$1400(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1500(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1600(Ljava/io/ObjectStreamClass;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;

    .line 72
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic blacklist access$1602(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic blacklist access$1700(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1802(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic blacklist access$1902(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic blacklist access$2002(Ljava/io/ObjectStreamClass;Z)Z
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Z

    .line 72
    iput-boolean p1, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    return p1
.end method

.method static synthetic blacklist access$2102(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic blacklist access$2200(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0, p1, p2, p3}, Ljava/io/ObjectStreamClass;->getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$2302(Ljava/io/ObjectStreamClass;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/lang/reflect/Method;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic blacklist access$2400(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$2500([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # [Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400(Ljava/io/ObjectStreamClass;)Z
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;

    .line 72
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method static synthetic blacklist access$502(Ljava/io/ObjectStreamClass;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic blacklist access$602(Ljava/io/ObjectStreamClass;[Ljava/io/ObjectStreamField;)[Ljava/io/ObjectStreamField;
    .registers 2
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .param p1, "x1"    # [Ljava/io/ObjectStreamField;

    .line 72
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    return-object p1
.end method

.method static synthetic blacklist access$700(Ljava/lang/Class;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .line 72
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$800(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$900(Ljava/io/ObjectStreamClass;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    return-void
.end method

.method private static greylist-max-o classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "name1"    # Ljava/lang/String;
    .param p1, "name2"    # Ljava/lang/String;

    .line 1526
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1527
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1528
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static greylist computeDefaultSUID(Ljava/lang/Class;)J
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 1731
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_1d2

    .line 1737
    :cond_12
    :try_start_12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1738
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1740
    .local v2, "dout":Ljava/io/DataOutputStream;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    and-int/lit16 v3, v3, 0x611

    .line 1750
    .local v3, "classMods":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1751
    .local v4, "methods":[Ljava/lang/reflect/Method;
    and-int/lit16 v5, v3, 0x200

    if-eqz v5, :cond_3a

    .line 1752
    array-length v5, v4

    if-lez v5, :cond_37

    .line 1753
    or-int/lit16 v5, v3, 0x400

    goto :goto_39

    .line 1754
    :cond_37
    and-int/lit16 v5, v3, -0x401

    :goto_39
    move v3, v5

    .line 1756
    :cond_3a
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1758
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_68

    .line 1764
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 1765
    .local v5, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v6, v5

    new-array v6, v6, [Ljava/lang/String;

    .line 1766
    .local v6, "ifaceNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4b
    array-length v8, v5

    if-ge v7, v8, :cond_59

    .line 1767
    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1766
    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 1769
    .end local v7    # "i":I
    :cond_59
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1770
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5d
    array-length v8, v6

    if-ge v7, v8, :cond_68

    .line 1771
    aget-object v8, v6, v7

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1770
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    .line 1775
    .end local v5    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "ifaceNames":[Ljava/lang/String;
    .end local v7    # "i":I
    :cond_68
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1776
    .local v5, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v5

    new-array v6, v6, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1777
    .local v6, "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_70
    array-length v8, v5

    if-ge v7, v8, :cond_7f

    .line 1778
    new-instance v8, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v9, v5, v7

    invoke-direct {v8, v9}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Field;)V

    aput-object v8, v6, v7

    .line 1777
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 1780
    .end local v7    # "i":I
    :cond_7f
    new-instance v7, Ljava/io/ObjectStreamClass$3;

    invoke-direct {v7}, Ljava/io/ObjectStreamClass$3;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1785
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_88
    array-length v8, v6

    if-ge v7, v8, :cond_ad

    .line 1786
    aget-object v8, v6, v7

    .line 1787
    .local v8, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    iget-object v9, v8, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v9

    and-int/lit16 v9, v9, 0xdf

    .line 1791
    .local v9, "mods":I
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_9d

    and-int/lit16 v10, v9, 0x88

    if-nez v10, :cond_aa

    .line 1794
    :cond_9d
    iget-object v10, v8, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1796
    iget-object v10, v8, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1785
    .end local v8    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v9    # "mods":I
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 1808
    .end local v7    # "i":I
    :cond_ad
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v7

    const/16 v8, 0x17

    const/4 v9, 0x0

    if-gt v7, v8, :cond_bc

    const/4 v7, 0x1

    goto :goto_bd

    :cond_bc
    move v7, v9

    .line 1810
    .local v7, "inheritStaticInitializer":Z
    :goto_bd
    const/4 v8, 0x0

    .line 1811
    .local v8, "warnIncompatibleSUIDChange":Z
    invoke-static {v1, v7}, Ljava/io/ObjectStreamClass;->hasStaticInitializer(Ljava/lang/Class;Z)Z

    move-result v11

    const/16 v12, 0x8

    if-eqz v11, :cond_dc

    .line 1815
    if-eqz v7, :cond_cf

    invoke-static {v1, v9}, Ljava/io/ObjectStreamClass;->hasStaticInitializer(Ljava/lang/Class;Z)Z

    move-result v9

    if-nez v9, :cond_cf

    .line 1818
    const/4 v8, 0x1

    .line 1821
    :cond_cf
    const-string v9, "<clinit>"

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1823
    const-string v9, "()V"

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1826
    :cond_dc
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 1827
    .local v9, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v11, v9

    new-array v11, v11, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1828
    .local v11, "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_e4
    array-length v14, v9

    if-ge v13, v14, :cond_f3

    .line 1829
    new-instance v14, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v15, v9, v13

    invoke-direct {v14, v15}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v14, v11, v13

    .line 1828
    add-int/lit8 v13, v13, 0x1

    goto :goto_e4

    .line 1831
    .end local v13    # "i":I
    :cond_f3
    new-instance v13, Ljava/io/ObjectStreamClass$4;

    invoke-direct {v13}, Ljava/io/ObjectStreamClass$4;-><init>()V

    invoke-static {v11, v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1836
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_fc
    array-length v14, v11

    const/16 v15, 0x2e

    if-ge v13, v14, :cond_12e

    .line 1837
    aget-object v14, v11, v13

    .line 1838
    .local v14, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    iget-object v12, v14, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    invoke-interface {v12}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v12

    and-int/lit16 v12, v12, 0xd3f

    .line 1843
    .local v12, "mods":I
    and-int/lit8 v18, v12, 0x2

    if-nez v18, :cond_125

    .line 1844
    const-string v10, "<init>"

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1846
    iget-object v10, v14, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move/from16 v19, v3

    const/16 v3, 0x2f

    .end local v3    # "classMods":I
    .local v19, "classMods":I
    invoke-virtual {v10, v3, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_127

    .line 1843
    .end local v19    # "classMods":I
    .restart local v3    # "classMods":I
    :cond_125
    move/from16 v19, v3

    .line 1836
    .end local v3    # "classMods":I
    .end local v12    # "mods":I
    .end local v14    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    .restart local v19    # "classMods":I
    :goto_127
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v19

    const/16 v12, 0x8

    goto :goto_fc

    .end local v19    # "classMods":I
    .restart local v3    # "classMods":I
    :cond_12e
    move/from16 v19, v3

    .line 1850
    .end local v3    # "classMods":I
    .end local v13    # "i":I
    .restart local v19    # "classMods":I
    array-length v3, v4

    new-array v3, v3, [Ljava/io/ObjectStreamClass$MemberSignature;

    .line 1851
    .local v3, "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_134
    array-length v12, v4

    if-ge v10, v12, :cond_143

    .line 1852
    new-instance v12, Ljava/io/ObjectStreamClass$MemberSignature;

    aget-object v13, v4, v10

    invoke-direct {v12, v13}, Ljava/io/ObjectStreamClass$MemberSignature;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v12, v3, v10

    .line 1851
    add-int/lit8 v10, v10, 0x1

    goto :goto_134

    .line 1854
    .end local v10    # "i":I
    :cond_143
    new-instance v10, Ljava/io/ObjectStreamClass$5;

    invoke-direct {v10}, Ljava/io/ObjectStreamClass$5;-><init>()V

    invoke-static {v3, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1863
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_14c
    array-length v12, v3

    if-ge v10, v12, :cond_17c

    .line 1864
    aget-object v12, v3, v10

    .line 1865
    .local v12, "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    iget-object v13, v12, Ljava/io/ObjectStreamClass$MemberSignature;->member:Ljava/lang/reflect/Member;

    invoke-interface {v13}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v13

    and-int/lit16 v13, v13, 0xd3f

    .line 1870
    .local v13, "mods":I
    and-int/lit8 v14, v13, 0x2

    if-nez v14, :cond_173

    .line 1871
    iget-object v14, v12, Ljava/io/ObjectStreamClass$MemberSignature;->name:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {v2, v13}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1873
    iget-object v14, v12, Ljava/io/ObjectStreamClass$MemberSignature;->signature:Ljava/lang/String;

    move-object/from16 v20, v3

    const/16 v3, 0x2f

    .end local v3    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .local v20, "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    invoke-virtual {v14, v3, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_177

    .line 1870
    .end local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .restart local v3    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_173
    move-object/from16 v20, v3

    const/16 v3, 0x2f

    .line 1863
    .end local v3    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v12    # "sig":Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v13    # "mods":I
    .restart local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :goto_177
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v20

    goto :goto_14c

    .end local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .restart local v3    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    :cond_17c
    move-object/from16 v20, v3

    .line 1877
    .end local v3    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v10    # "i":I
    .restart local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1879
    const-string v3, "SHA"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1880
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    .line 1881
    .local v10, "hashBytes":[B
    const-wide/16 v12, 0x0

    .line 1882
    .local v12, "hash":J
    array-length v14, v10

    const/16 v15, 0x8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/16 v16, 0x1

    add-int/lit8 v14, v14, -0x1

    .local v14, "i":I
    :goto_19c
    if-ltz v14, :cond_1b4

    .line 1883
    shl-long v16, v12, v15

    aget-byte v15, v10, v14

    and-int/lit16 v15, v15, 0xff

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v2    # "dout":Ljava/io/DataOutputStream;
    .end local v3    # "md":Ljava/security/MessageDigest;
    .local v21, "dout":Ljava/io/DataOutputStream;
    .local v22, "md":Ljava/security/MessageDigest;
    int-to-long v2, v15

    or-long v12, v16, v2

    .line 1882
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    const/16 v15, 0x8

    goto :goto_19c

    .end local v21    # "dout":Ljava/io/DataOutputStream;
    .end local v22    # "md":Ljava/security/MessageDigest;
    .restart local v2    # "dout":Ljava/io/DataOutputStream;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :cond_1b4
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 1889
    .end local v2    # "dout":Ljava/io/DataOutputStream;
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v14    # "i":I
    .restart local v21    # "dout":Ljava/io/DataOutputStream;
    .restart local v22    # "md":Ljava/security/MessageDigest;
    if-eqz v8, :cond_1bf

    .line 1890
    sget-object v2, Ljava/io/ObjectStreamClass;->suidCompatibilityListener:Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;

    invoke-interface {v2, v1, v12, v13}, Ljava/io/ObjectStreamClass$DefaultSUIDCompatibilityListener;->warnDefaultSUIDTargetVersionDependent(Ljava/lang/Class;J)V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1bf} :catch_1cb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_1bf} :catch_1c0

    .line 1893
    :cond_1bf
    return-wide v12

    .line 1896
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    .end local v5    # "fields":[Ljava/lang/reflect/Field;
    .end local v6    # "fieldSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v7    # "inheritStaticInitializer":Z
    .end local v8    # "warnIncompatibleSUIDChange":Z
    .end local v9    # "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "hashBytes":[B
    .end local v11    # "consSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v12    # "hash":J
    .end local v19    # "classMods":I
    .end local v20    # "methSigs":[Ljava/io/ObjectStreamClass$MemberSignature;
    .end local v21    # "dout":Ljava/io/DataOutputStream;
    .end local v22    # "md":Ljava/security/MessageDigest;
    :catch_1c0
    move-exception v0

    .line 1897
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1894
    .end local v0    # "ex":Ljava/security/NoSuchAlgorithmException;
    :catch_1cb
    move-exception v0

    .line 1895
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1733
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1d2
    :goto_1d2
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private greylist computeFieldOffsets()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1322
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1323
    iput v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    .line 1324
    const/4 v0, -0x1

    .line 1326
    .local v0, "firstObjIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_5a

    .line 1327
    aget-object v2, v2, v1

    .line 1328
    .local v2, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v3

    sparse-switch v3, :sswitch_data_6e

    .line 1361
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3

    .line 1354
    :sswitch_1c
    iget v3, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1355
    if-ne v0, v4, :cond_57

    .line 1356
    move v0, v1

    goto :goto_57

    .line 1342
    :sswitch_29
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1343
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1344
    goto :goto_57

    .line 1348
    :sswitch_35
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1349
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1350
    goto :goto_57

    .line 1336
    :sswitch_41
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1337
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 1338
    goto :goto_57

    .line 1331
    :sswitch_4d
    iget v3, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    invoke-virtual {v2, v3}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 1332
    nop

    .line 1326
    .end local v2    # "f":Ljava/io/ObjectStreamField;
    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1364
    .end local v1    # "i":I
    :cond_5a
    if-eq v0, v4, :cond_6d

    iget v1, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    add-int/2addr v1, v0

    array-length v2, v2

    if-ne v1, v2, :cond_63

    goto :goto_6d

    .line 1367
    :cond_63
    new-instance v1, Ljava/io/InvalidClassException;

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v3, "illegal field order"

    invoke-direct {v1, v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1369
    :cond_6d
    :goto_6d
    return-void

    :sswitch_data_6e
    .sparse-switch
        0x42 -> :sswitch_4d
        0x43 -> :sswitch_41
        0x44 -> :sswitch_35
        0x46 -> :sswitch_29
        0x49 -> :sswitch_29
        0x4a -> :sswitch_35
        0x4c -> :sswitch_1c
        0x53 -> :sswitch_41
        0x5a -> :sswitch_4d
        0x5b -> :sswitch_1c
    .end sparse-switch
.end method

.method private greylist-max-o getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .local v0, "slots":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamClass$ClassDataSlot;>;"
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .local v1, "start":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 1215
    .local v2, "end":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9
    if-eqz v2, :cond_18

    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1216
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_9

    .line 1219
    :cond_18
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1221
    .local v3, "oscNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v4, p0

    .local v4, "d":Ljava/io/ObjectStreamClass;
    :goto_1f
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_81

    .line 1222
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 1225
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-eqz v7, :cond_39

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_3b

    :cond_39
    iget-object v7, v4, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 1230
    .local v7, "searchName":Ljava/lang/String;
    :goto_3b
    const/4 v8, 0x0

    .line 1231
    .local v8, "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v1

    .local v9, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3d
    if-eq v9, v2, :cond_50

    .line 1232
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 1233
    move-object v8, v9

    .line 1234
    goto :goto_50

    .line 1231
    :cond_4b
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_3d

    .line 1239
    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_50
    :goto_50
    if-eqz v8, :cond_6a

    .line 1240
    move-object v9, v1

    .restart local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_53
    if-eq v9, v8, :cond_66

    .line 1241
    new-instance v10, Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1242
    invoke-static {v9, v6}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    .line 1241
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    goto :goto_53

    .line 1244
    .end local v9    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_66
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1248
    :cond_6a
    new-instance v5, Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-direct {v4, v8}, Ljava/io/ObjectStreamClass;->getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v9

    invoke-direct {v5, v9, v6}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    .end local v7    # "searchName":Ljava/lang/String;
    .end local v8    # "match":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, v4, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    goto :goto_1f

    .line 1223
    :cond_79
    new-instance v5, Ljava/io/InvalidClassException;

    const-string v6, "Circular reference."

    invoke-direct {v5, v6}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1252
    .end local v4    # "d":Ljava/io/ObjectStreamClass;
    :cond_81
    move-object v4, v1

    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_82
    if-eq v4, v2, :cond_95

    .line 1253
    new-instance v7, Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1254
    invoke-static {v4, v6}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/io/ObjectStreamClass$ClassDataSlot;-><init>(Ljava/io/ObjectStreamClass;Z)V

    .line 1253
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_82

    .line 1258
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_95
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1259
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/ObjectStreamClass$ClassDataSlot;

    return-object v4
.end method

.method private static greylist-max-o getClassSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1535
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1536
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1537
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1538
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_5

    .line 1540
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1541
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_26

    .line 1542
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a2

    .line 1543
    :cond_26
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_31

    .line 1544
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a2

    .line 1545
    :cond_31
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3b

    .line 1546
    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1547
    :cond_3b
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_45

    .line 1548
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1549
    :cond_45
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4f

    .line 1550
    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1551
    :cond_4f
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_59

    .line 1552
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1553
    :cond_59
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_63

    .line 1554
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1555
    :cond_63
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6d

    .line 1556
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1557
    :cond_6d
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_77

    .line 1558
    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 1560
    :cond_77
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1

    .line 1563
    :cond_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    :goto_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist getConstructorId(Ljava/lang/Class;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .line 2404
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 2405
    .local v0, "targetSdkVersion":I
    if-lez v0, :cond_19

    const/16 v1, 0x18

    if-gt v0, v1, :cond_19

    .line 2406
    const-string v1, "WARNING: ObjectStreamClass.getConstructorId(Class<?>) is private API andwill be removed in a future Android release."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 2418
    const-wide v1, 0x1083b99f34b59645L    # 4.065670734428704E-229

    return-wide v1

    .line 2421
    :cond_19
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectStreamClass.getConstructorId(Class<?>) is not supported on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getDeclaredSUID(Ljava/lang/Class;)Ljava/lang/Long;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1716
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "serialVersionUID"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1717
    .local v1, "f":Ljava/lang/reflect/Field;
    const/16 v2, 0x18

    .line 1718
    .local v2, "mask":I
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1d

    .line 1719
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1720
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    return-object v0

    .line 1723
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "mask":I
    :cond_1d
    goto :goto_1f

    .line 1722
    :catch_1e
    move-exception v1

    .line 1724
    :goto_1f
    return-object v0
.end method

.method private static greylist-max-o getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1641
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1643
    .local v0, "serialPersistentFields":[Ljava/io/ObjectStreamField;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    const-string v3, "serialPersistentFields"

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1644
    .local v3, "f":Ljava/lang/reflect/Field;
    const/16 v4, 0x1a

    .line 1645
    .local v4, "mask":I
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_1c

    .line 1646
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1647
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/io/ObjectStreamField;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1b} :catch_1d

    move-object v0, v5

    .line 1650
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v4    # "mask":I
    :cond_1c
    goto :goto_1e

    .line 1649
    :catch_1d
    move-exception v3

    .line 1651
    :goto_1e
    if-nez v0, :cond_21

    .line 1652
    return-object v1

    .line 1653
    :cond_21
    array-length v1, v0

    if-nez v1, :cond_27

    .line 1654
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    return-object v1

    .line 1657
    :cond_27
    array-length v1, v0

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    .line 1659
    .local v1, "boundFields":[Ljava/io/ObjectStreamField;
    new-instance v3, Ljava/util/HashSet;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1661
    .local v3, "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    array-length v5, v0

    if-ge v4, v5, :cond_93

    .line 1662
    aget-object v5, v0, v4

    .line 1664
    .local v5, "spf":Ljava/io/ObjectStreamField;
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1665
    .local v6, "fname":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7c

    .line 1669
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1672
    :try_start_43
    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1673
    .local v7, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_64

    .line 1674
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_64

    .line 1676
    new-instance v8, Ljava/io/ObjectStreamField;

    .line 1677
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    invoke-direct {v8, v7, v9, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    aput-object v8, v1, v4
    :try_end_64
    .catch Ljava/lang/NoSuchFieldException; {:try_start_43 .. :try_end_64} :catch_65

    .line 1680
    .end local v7    # "f":Ljava/lang/reflect/Field;
    :cond_64
    goto :goto_66

    .line 1679
    :catch_65
    move-exception v7

    .line 1681
    :goto_66
    aget-object v7, v1, v4

    if-nez v7, :cond_79

    .line 1682
    new-instance v7, Ljava/io/ObjectStreamField;

    .line 1683
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v9

    invoke-direct {v7, v6, v8, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    aput-object v7, v1, v4

    .line 1661
    .end local v5    # "spf":Ljava/io/ObjectStreamField;
    .end local v6    # "fname":Ljava/lang/String;
    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 1666
    .restart local v5    # "spf":Ljava/io/ObjectStreamField;
    .restart local v6    # "fname":Ljava/lang/String;
    :cond_7c
    new-instance v2, Ljava/io/InvalidClassException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "multiple serializable fields named "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1686
    .end local v4    # "i":I
    .end local v5    # "spf":Ljava/io/ObjectStreamField;
    .end local v6    # "fname":Ljava/lang/String;
    :cond_93
    return-object v1
.end method

.method private static greylist-max-o getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .line 1696
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1697
    .local v0, "clFields":[Ljava/lang/reflect/Field;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1698
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/ObjectStreamField;>;"
    const/16 v2, 0x88

    .line 1700
    .local v2, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    array-length v4, v0

    if-ge v3, v4, :cond_27

    .line 1701
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/2addr v4, v2

    if-nez v4, :cond_24

    .line 1702
    new-instance v4, Ljava/io/ObjectStreamField;

    aget-object v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1700
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1705
    .end local v3    # "i":I
    :cond_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1706
    .local v3, "size":I
    if-nez v3, :cond_30

    sget-object v4, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    goto :goto_38

    .line 1707
    :cond_30
    new-array v4, v3, [Ljava/io/ObjectStreamField;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/ObjectStreamField;

    .line 1706
    :goto_38
    return-object v4
.end method

.method private static greylist-max-o getExternalizableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1398
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1399
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1400
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_10} :catch_17

    and-int/2addr v2, v3

    if-eqz v2, :cond_15

    .line 1401
    move-object v0, v1

    goto :goto_16

    :cond_15
    nop

    .line 1400
    :goto_16
    return-object v0

    .line 1402
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_17
    move-exception v1

    .line 1403
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method private static greylist-max-o getInheritableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1451
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1452
    .local v0, "meth":Ljava/lang/reflect/Method;
    move-object v1, p0

    .line 1453
    .local v1, "defCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v1, :cond_10

    .line 1455
    :try_start_4
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v0, v2

    .line 1456
    goto :goto_10

    .line 1457
    :catch_a
    move-exception v2

    .line 1458
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1459
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 1462
    :cond_10
    :goto_10
    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, p3, :cond_1a

    goto :goto_3c

    .line 1465
    :cond_1a
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1466
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 1467
    .local v3, "mods":I
    and-int/lit16 v4, v3, 0x408

    if-eqz v4, :cond_27

    .line 1468
    return-object v2

    .line 1469
    :cond_27
    and-int/lit8 v4, v3, 0x5

    if-eqz v4, :cond_2c

    .line 1470
    return-object v0

    .line 1471
    :cond_2c
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_34

    .line 1472
    if-ne p0, v1, :cond_33

    move-object v2, v0

    :cond_33
    return-object v2

    .line 1474
    :cond_34
    invoke-static {p0, v1}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move-object v2, v0

    :cond_3b
    return-object v2

    .line 1463
    .end local v3    # "mods":I
    :cond_3c
    :goto_3c
    return-object v2
.end method

.method private static greylist-max-o getMethodSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1574
    .local p0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1575
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 1577
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1579
    .end local v1    # "i":I
    :cond_1a
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1580
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getClassSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1512
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, "s":Ljava/lang/String;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1514
    .local v1, "i":I
    if-ltz v1, :cond_12

    .line 1515
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1517
    :cond_12
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1518
    if-ltz v1, :cond_20

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_22

    :cond_20
    const-string v2, ""

    :goto_22
    return-object v2
.end method

.method private static greylist-max-o getPrivateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1488
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p3, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1489
    .local v1, "meth":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1490
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    .line 1491
    .local v2, "mods":I
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_11} :catch_1f

    if-ne v3, p3, :cond_1d

    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1d

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_1d

    .line 1493
    move-object v0, v1

    goto :goto_1e

    :cond_1d
    nop

    .line 1491
    :goto_1e
    return-object v0

    .line 1494
    .end local v1    # "meth":Ljava/lang/reflect/Method;
    .end local v2    # "mods":I
    :catch_1f
    move-exception v1

    .line 1495
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method

.method private static greylist-max-o getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;
    .registers 10
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 2241
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    array-length v1, p0

    if-lez v1, :cond_9

    .line 2242
    iget-object v1, p1, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    goto :goto_a

    :cond_9
    move-object v1, v0

    .line 2243
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_a
    # getter for: Ljava/io/ObjectStreamClass$Caches;->reflectorsQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->access$2600()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    sget-object v3, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 2244
    new-instance v2, Ljava/io/ObjectStreamClass$FieldReflectorKey;

    .line 2245
    # getter for: Ljava/io/ObjectStreamClass$Caches;->reflectorsQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->access$2600()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, v1, p0, v3}, Ljava/io/ObjectStreamClass$FieldReflectorKey;-><init>(Ljava/lang/Class;[Ljava/io/ObjectStreamField;Ljava/lang/ref/ReferenceQueue;)V

    .line 2246
    .local v2, "key":Ljava/io/ObjectStreamClass$FieldReflectorKey;
    sget-object v3, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 2247
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v4, 0x0

    .line 2248
    .local v4, "entry":Ljava/lang/Object;
    if-eqz v3, :cond_2b

    .line 2249
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2251
    :cond_2b
    const/4 v5, 0x0

    .line 2252
    .local v5, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v4, :cond_56

    .line 2253
    new-instance v6, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v6, v0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$1;)V

    move-object v0, v6

    .line 2254
    .local v0, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 2256
    .local v6, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_39
    if-eqz v3, :cond_40

    .line 2257
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2259
    :cond_40
    sget-object v7, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v2, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Ljava/lang/ref/Reference;

    .line 2260
    if-eqz v3, :cond_4f

    .line 2261
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2263
    :cond_4f
    if-eqz v3, :cond_53

    if-eqz v4, :cond_39

    .line 2264
    :cond_53
    if-nez v4, :cond_56

    .line 2265
    move-object v5, v0

    .line 2269
    .end local v0    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v6    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_56
    instance-of v0, v4, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v0, :cond_5e

    .line 2270
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v0

    .line 2271
    :cond_5e
    instance-of v0, v4, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v0, :cond_6a

    .line 2272
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_86

    .line 2273
    :cond_6a
    if-nez v4, :cond_86

    .line 2275
    :try_start_6c
    new-instance v0, Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-static {p0, p1}, Ljava/io/ObjectStreamClass;->matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ObjectStreamClass$FieldReflector;-><init>([Ljava/io/ObjectStreamField;)V
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_77

    .line 2278
    .end local v4    # "entry":Ljava/lang/Object;
    .local v0, "entry":Ljava/lang/Object;
    move-object v4, v0

    goto :goto_79

    .line 2276
    .end local v0    # "entry":Ljava/lang/Object;
    .restart local v4    # "entry":Ljava/lang/Object;
    :catchall_77
    move-exception v0

    .line 2277
    .local v0, "th":Ljava/lang/Throwable;
    move-object v4, v0

    .line 2279
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_79
    invoke-virtual {v5, v4}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    .line 2280
    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->reflectors:Ljava/util/concurrent/ConcurrentMap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2283
    :cond_86
    :goto_86
    instance-of v0, v4, Ljava/io/ObjectStreamClass$FieldReflector;

    if-eqz v0, :cond_8e

    .line 2284
    move-object v0, v4

    check-cast v0, Ljava/io/ObjectStreamClass$FieldReflector;

    return-object v0

    .line 2285
    :cond_8e
    instance-of v0, v4, Ljava/io/InvalidClassException;

    if-nez v0, :cond_b9

    .line 2287
    instance-of v0, v4, Ljava/lang/RuntimeException;

    if-nez v0, :cond_b5

    .line 2289
    instance-of v0, v4, Ljava/lang/Error;

    if-eqz v0, :cond_9e

    .line 2290
    move-object v0, v4

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 2292
    :cond_9e
    new-instance v0, Ljava/lang/InternalError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2288
    :cond_b5
    move-object v0, v4

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 2286
    :cond_b9
    move-object v0, v4

    check-cast v0, Ljava/io/InvalidClassException;

    throw v0
.end method

.method private static greylist-max-o getSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1612
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-class v0, Ljava/io/Externalizable;

    .line 1613
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1614
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1615
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1617
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDeclaredSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v0

    move-object v1, v0

    .local v1, "fields":[Ljava/io/ObjectStreamField;
    if-nez v0, :cond_27

    .line 1618
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getDefaultSerialFields(Ljava/lang/Class;)[Ljava/io/ObjectStreamField;

    move-result-object v1

    .line 1620
    :cond_27
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_2d

    .line 1622
    .end local v1    # "fields":[Ljava/io/ObjectStreamField;
    :cond_2b
    sget-object v1, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 1624
    .restart local v1    # "fields":[Ljava/io/ObjectStreamField;
    :goto_2d
    return-object v1
.end method

.method private static greylist-max-o getSerializableConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1413
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 1414
    .local v0, "initCl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 1415
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_1

    .line 1416
    return-object v2

    .line 1420
    :cond_12
    :try_start_12
    move-object v1, v2

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1421
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v3

    .line 1422
    .local v3, "mods":I
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_40

    and-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_2c

    .line 1424
    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_40

    .line 1430
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, p0, :cond_3b

    .line 1431
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4, p0}, Ljava/lang/reflect/Constructor;->serializationCopy(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v1, v4

    .line 1434
    :cond_3b
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_3f} :catch_41

    .line 1435
    return-object v1

    .line 1426
    :cond_40
    :goto_40
    return-object v2

    .line 1436
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "mods":I
    :catch_41
    move-exception v1

    .line 1437
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    return-object v2
.end method

.method private greylist-max-o getVariantFor(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1379
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-ne v0, p1, :cond_5

    .line 1380
    return-object p0

    .line 1382
    :cond_5
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0}, Ljava/io/ObjectStreamClass;-><init>()V

    .line 1383
    .local v0, "desc":Ljava/io/ObjectStreamClass;
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 1384
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    goto :goto_1a

    .line 1386
    :cond_15
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    invoke-virtual {v0, p0, p1, v2, v1}, Ljava/io/ObjectStreamClass;->initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V

    .line 1388
    :goto_1a
    return-object v0
.end method

.method private static native greylist-max-o hasStaticInitializer(Ljava/lang/Class;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;J)V
    .registers 5
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "hash"    # J

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " relies on its default SUID which is dependent on the app\'s targetSdkVersion. To avoid problems during upgrade add the following to class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    private static final long serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1926
    invoke-static {v0}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 1930
    return-void
.end method

.method public static whitelist test-api lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .line 221
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;
    .registers 9
    .param p1, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .line 330
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_c

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 331
    return-object v0

    .line 333
    :cond_c
    # getter for: Ljava/io/ObjectStreamClass$Caches;->localDescsQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->access$200()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    sget-object v2, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1, v2}, Ljava/io/ObjectStreamClass;->processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    .line 334
    new-instance v1, Ljava/io/ObjectStreamClass$WeakClassKey;

    # getter for: Ljava/io/ObjectStreamClass$Caches;->localDescsQueue:Ljava/lang/ref/ReferenceQueue;
    invoke-static {}, Ljava/io/ObjectStreamClass$Caches;->access$200()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/ObjectStreamClass$WeakClassKey;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;)V

    .line 335
    .local v1, "key":Ljava/io/ObjectStreamClass$WeakClassKey;
    sget-object v2, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 336
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v3, 0x0

    .line 337
    .local v3, "entry":Ljava/lang/Object;
    if-eqz v2, :cond_2d

    .line 338
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 340
    :cond_2d
    const/4 v4, 0x0

    .line 341
    .local v4, "future":Ljava/io/ObjectStreamClass$EntryFuture;
    if-nez v3, :cond_58

    .line 342
    new-instance v5, Ljava/io/ObjectStreamClass$EntryFuture;

    invoke-direct {v5, v0}, Ljava/io/ObjectStreamClass$EntryFuture;-><init>(Ljava/io/ObjectStreamClass$1;)V

    move-object v0, v5

    .line 343
    .local v0, "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 345
    .local v5, "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_3b
    if-eqz v2, :cond_42

    .line 346
    sget-object v6, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    :cond_42
    sget-object v6, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/lang/ref/Reference;

    .line 349
    if-eqz v2, :cond_51

    .line 350
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 352
    :cond_51
    if-eqz v2, :cond_55

    if-eqz v3, :cond_3b

    .line 353
    :cond_55
    if-nez v3, :cond_58

    .line 354
    move-object v4, v0

    .line 358
    .end local v0    # "newEntry":Ljava/io/ObjectStreamClass$EntryFuture;
    .end local v5    # "newRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    :cond_58
    instance-of v0, v3, Ljava/io/ObjectStreamClass;

    if-eqz v0, :cond_60

    .line 359
    move-object v0, v3

    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    .line 361
    :cond_60
    instance-of v0, v3, Ljava/io/ObjectStreamClass$EntryFuture;

    if-eqz v0, :cond_77

    .line 362
    move-object v4, v3

    check-cast v4, Ljava/io/ObjectStreamClass$EntryFuture;

    .line 363
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$EntryFuture;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-ne v0, v5, :cond_73

    .line 370
    const/4 v3, 0x0

    goto :goto_77

    .line 372
    :cond_73
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v3

    .line 375
    :cond_77
    :goto_77
    if-nez v3, :cond_97

    .line 377
    :try_start_79
    new-instance v0, Ljava/io/ObjectStreamClass;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass;-><init>(Ljava/lang/Class;)V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_80

    .line 380
    .end local v3    # "entry":Ljava/lang/Object;
    .local v0, "entry":Ljava/lang/Object;
    move-object v3, v0

    goto :goto_82

    .line 378
    .end local v0    # "entry":Ljava/lang/Object;
    .restart local v3    # "entry":Ljava/lang/Object;
    :catchall_80
    move-exception v0

    .line 379
    .local v0, "th":Ljava/lang/Throwable;
    move-object v3, v0

    .line 381
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_82
    invoke-virtual {v4, v3}, Ljava/io/ObjectStreamClass$EntryFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 382
    sget-object v0, Ljava/io/ObjectStreamClass$Caches;->localDescs:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    .line 385
    :cond_93
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$EntryFuture;->get()Ljava/lang/Object;

    move-result-object v3

    .line 389
    :cond_97
    :goto_97
    instance-of v0, v3, Ljava/io/ObjectStreamClass;

    if-eqz v0, :cond_9f

    .line 390
    move-object v0, v3

    check-cast v0, Ljava/io/ObjectStreamClass;

    return-object v0

    .line 391
    :cond_9f
    instance-of v0, v3, Ljava/lang/RuntimeException;

    if-nez v0, :cond_c2

    .line 393
    instance-of v0, v3, Ljava/lang/Error;

    if-eqz v0, :cond_ab

    .line 394
    move-object v0, v3

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 396
    :cond_ab
    new-instance v0, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_c2
    move-object v0, v3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public static whitelist test-api lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamClass;"
        }
    .end annotation

    .line 233
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o matchFields([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)[Ljava/io/ObjectStreamField;
    .registers 13
    .param p0, "fields"    # [Ljava/io/ObjectStreamField;
    .param p1, "localDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 2357
    if-eqz p1, :cond_5

    .line 2358
    iget-object v0, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    .line 2371
    .local v0, "localFields":[Ljava/io/ObjectStreamField;
    :goto_7
    array-length v1, p0

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    .line 2372
    .local v1, "matches":[Ljava/io/ObjectStreamField;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, p0

    if-ge v2, v3, :cond_7a

    .line 2373
    aget-object v3, p0, v2

    .local v3, "f":Ljava/io/ObjectStreamField;
    const/4 v4, 0x0

    .line 2374
    .local v4, "m":Ljava/io/ObjectStreamField;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_12
    array-length v6, v0

    const/4 v7, 0x0

    if-ge v5, v6, :cond_5e

    .line 2375
    aget-object v6, v0, v5

    .line 2377
    .local v6, "lf":Ljava/io/ObjectStreamField;
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 2378
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 2379
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_49

    .line 2380
    new-instance v8, Ljava/io/ObjectStreamField;

    .line 2381
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getField()Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v10

    invoke-direct {v8, v9, v10, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/reflect/Field;ZZ)V

    move-object v4, v8

    goto :goto_5b

    .line 2383
    :cond_49
    new-instance v7, Ljava/io/ObjectStreamField;

    .line 2384
    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/ObjectStreamField;->isUnshared()Z

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v7

    .line 2374
    .end local v6    # "lf":Ljava/io/ObjectStreamField;
    :cond_5b
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2388
    .end local v5    # "j":I
    :cond_5e
    if-nez v4, :cond_6e

    .line 2389
    new-instance v5, Ljava/io/ObjectStreamField;

    .line 2390
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8, v7}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v5

    .line 2392
    :cond_6e
    invoke-virtual {v3}, Ljava/io/ObjectStreamField;->getOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectStreamField;->setOffset(I)V

    .line 2393
    aput-object v4, v1, v2

    .line 2372
    .end local v3    # "f":Ljava/io/ObjectStreamField;
    .end local v4    # "m":Ljava/io/ObjectStreamField;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2395
    .end local v2    # "i":I
    :cond_7a
    return-object v1
.end method

.method private static greylist newInstance(Ljava/lang/Class;J)Ljava/lang/Object;
    .registers 7
    .param p1, "constructorId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2425
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 2426
    .local v0, "targetSdkVersion":I
    if-lez v0, :cond_1c

    const/16 v1, 0x18

    if-gt v0, v1, :cond_1c

    .line 2427
    const-string v1, "WARNING: ObjectStreamClass.newInstance(Class<?>, long) is private API andwill be removed in a future Android release."

    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    .line 2429
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 2432
    :cond_1c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectStreamClass.newInstance(Class<?>, long) is not supported on SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o packageEquals(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1504
    .local p0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    .line 1505
    invoke-static {p0}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/io/ObjectStreamClass;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1504
    :goto_1b
    return v0
.end method

.method static greylist-max-o processQueue(Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "+",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;*>;)V"
        }
    .end annotation

    .line 2446
    .local p0, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Class<*>;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<+Ljava/lang/ref/WeakReference<Ljava/lang/Class<*>;>;*>;"
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_b

    .line 2447
    invoke-interface {p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2449
    :cond_b
    return-void
.end method

.method private final greylist-max-o requireInitialized()V
    .registers 3

    .line 786
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    if-eqz v0, :cond_5

    .line 788
    return-void

    .line 787
    :cond_5
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unexpected call when not initialized"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o throwMiscException(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "th"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_17

    .line 1592
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_c

    .line 1593
    move-object v0, p0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 1595
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected exception type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1596
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1597
    throw v0

    .line 1591
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_17
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method


# virtual methods
.method greylist-max-o checkDefaultSerialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 822
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 823
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->defaultSerializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_8

    .line 826
    return-void

    .line 824
    :cond_8
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0
.end method

.method greylist-max-o checkDeserialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 797
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_8

    .line 800
    return-void

    .line 798
    :cond_8
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0
.end method

.method greylist-max-o checkSerialize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 808
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 809
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->serializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v0, :cond_8

    .line 812
    return-void

    .line 810
    :cond_8
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$ExceptionInfo;->newInvalidClassException()Ljava/io/InvalidClassException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api forClass()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    .line 277
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    if-nez v0, :cond_6

    .line 278
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_6
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 281
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 282
    invoke-static {}, Lsun/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 283
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/reflect/misc/ReflectUtil;->needsPackageAccessCheck(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 284
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 287
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_28
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    return-object v0
.end method

.method greylist-max-o getClassDataLayout()[Ljava/io/ObjectStreamClass$ClassDataSlot;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    if-nez v0, :cond_a

    .line 1203
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->getClassDataLayout0()[Ljava/io/ObjectStreamClass$ClassDataSlot;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    .line 1205
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->dataLayout:[Ljava/io/ObjectStreamClass$ClassDataSlot;

    return-object v0
.end method

.method public whitelist test-api getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getField(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/ObjectStreamField;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/io/ObjectStreamField;"
        }
    .end annotation

    .line 866
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v2, v1

    if-ge v0, v2, :cond_30

    .line 867
    aget-object v1, v1, v0

    .line 868
    .local v1, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 869
    if-eqz p2, :cond_2c

    const-class v2, Ljava/lang/Object;

    if-ne p2, v2, :cond_1f

    .line 870
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_2c

    .line 874
    :cond_1f
    invoke-virtual {v1}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 875
    .local v2, "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2d

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 876
    return-object v1

    .line 872
    .end local v2    # "ftype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2c
    :goto_2c
    return-object v1

    .line 866
    .end local v1    # "f":Ljava/io/ObjectStreamField;
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 880
    .end local v0    # "i":I
    :cond_30
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getFields()[Ljava/io/ObjectStreamField;
    .registers 2

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ObjectStreamClass;->getFields(Z)[Ljava/io/ObjectStreamField;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getFields(Z)[Ljava/io/ObjectStreamField;
    .registers 3
    .param p1, "copy"    # Z

    .line 856
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    if-eqz p1, :cond_a

    invoke-virtual {v0}, [Ljava/io/ObjectStreamField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/ObjectStreamField;

    :cond_a
    return-object v0
.end method

.method greylist getLocalDesc()Ljava/io/ObjectStreamClass;
    .registers 2

    .line 845
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 846
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method public whitelist test-api getName()Ljava/lang/String;
    .registers 2

    .line 244
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    return-object v0
.end method

.method greylist getNumObjFields()I
    .registers 2

    .line 1275
    iget v0, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    return v0
.end method

.method greylist-max-o getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 1304
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1305
    return-void
.end method

.method greylist getPrimDataSize()I
    .registers 2

    .line 1267
    iget v0, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    return v0
.end method

.method greylist-max-o getPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 1285
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->getPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1286
    return-void
.end method

.method greylist-max-o getResolveException()Ljava/lang/ClassNotFoundException;
    .registers 2

    .line 779
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    return-object v0
.end method

.method public whitelist test-api getSerialVersionUID()J
    .registers 3

    .line 257
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    if-nez v0, :cond_11

    .line 258
    new-instance v0, Ljava/io/ObjectStreamClass$1;

    invoke-direct {v0, p0}, Ljava/io/ObjectStreamClass$1;-><init>(Ljava/io/ObjectStreamClass;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 266
    :cond_11
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method greylist-max-o getSuperDesc()Ljava/io/ObjectStreamClass;
    .registers 2

    .line 834
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 835
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method greylist-max-o hasBlockExternalData()Z
    .registers 2

    .line 924
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 925
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    return v0
.end method

.method greylist hasReadObjectMethod()Z
    .registers 2

    .line 966
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 967
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist hasReadObjectNoDataMethod()Z
    .registers 2

    .line 976
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 977
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o hasReadResolveMethod()Z
    .registers 2

    .line 994
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 995
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist hasWriteObjectData()Z
    .registers 2

    .line 934
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 935
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    return v0
.end method

.method greylist-max-o hasWriteObjectMethod()Z
    .registers 2

    .line 956
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 957
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o hasWriteReplaceMethod()Z
    .registers 2

    .line 985
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 986
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o initNonProxy(Ljava/io/ObjectStreamClass;Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .registers 13
    .param p1, "model"    # Ljava/io/ObjectStreamClass;
    .param p3, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p4, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassNotFoundException;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 603
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 604
    .local v0, "suid":J
    const/4 v2, 0x0

    .line 605
    .local v2, "osc":Ljava/io/ObjectStreamClass;
    const/4 v3, 0x1

    if-eqz p2, :cond_ca

    .line 606
    invoke-static {p2, v3}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v2

    .line 607
    iget-boolean v4, v2, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-nez v4, :cond_c2

    .line 611
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eq v4, v5, :cond_2b

    .line 612
    new-instance v3, Ljava/io/InvalidClassException;

    if-eqz v4, :cond_25

    .line 613
    const-string v4, "cannot bind enum descriptor to a non-enum class"

    goto :goto_27

    .line 614
    :cond_25
    const-string v4, "cannot bind non-enum descriptor to an enum class"

    :goto_27
    invoke-direct {v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    :cond_2b
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v4, v5, :cond_65

    .line 618
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_65

    .line 619
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_40

    goto :goto_65

    .line 620
    :cond_40
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local class incompatible: stream classdesc serialVersionUID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", local class serialVersionUID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 627
    :cond_65
    :goto_65
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iget-object v5, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->classNamesEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 633
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-nez v4, :cond_ca

    .line 634
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iget-boolean v5, v2, Ljava/io/ObjectStreamClass;->serializable:Z

    if-ne v4, v5, :cond_8a

    iget-boolean v6, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-boolean v7, v2, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-ne v6, v7, :cond_80

    goto :goto_8a

    .line 636
    :cond_80
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v5, "Serializable incompatible with Externalizable"

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 640
    :cond_8a
    :goto_8a
    if-ne v4, v5, :cond_96

    iget-boolean v5, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iget-boolean v6, v2, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-ne v5, v6, :cond_96

    if-nez v4, :cond_ca

    if-nez v5, :cond_ca

    .line 643
    :cond_96
    new-instance v4, Ljava/io/ObjectStreamClass$ExceptionInfo;

    iget-object v5, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v6, "class invalid for deserialization"

    invoke-direct {v4, v5, v6}, Ljava/io/ObjectStreamClass$ExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    goto :goto_ca

    .line 628
    :cond_a2
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v4, v2, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local class name incompatible with stream class name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 608
    :cond_c2
    new-instance v3, Ljava/io/InvalidClassException;

    const-string v4, "cannot bind non-proxy descriptor to a proxy class"

    invoke-direct {v3, v4}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 649
    :cond_ca
    :goto_ca
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 650
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    .line 651
    iput-object p4, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 652
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 653
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 654
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 655
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->isEnum:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 656
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->serializable:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 657
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 658
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 659
    iget-boolean v4, p1, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    iput-boolean v4, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    .line 660
    iget-object v4, p1, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 661
    iget v5, p1, Ljava/io/ObjectStreamClass;->primDataSize:I

    iput v5, p0, Ljava/io/ObjectStreamClass;->primDataSize:I

    .line 662
    iget v5, p1, Ljava/io/ObjectStreamClass;->numObjFields:I

    iput v5, p0, Ljava/io/ObjectStreamClass;->numObjFields:I

    .line 664
    if-eqz v2, :cond_121

    .line 665
    iput-object v2, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 666
    iget-object v5, v2, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    iput-object v5, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    .line 667
    iget-object v5, v2, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    iput-object v5, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    .line 668
    iget-object v5, v2, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    iput-object v5, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    .line 669
    iget-object v5, v2, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v5, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    .line 670
    iget-object v5, v2, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v5, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    .line 671
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    if-nez v5, :cond_11d

    .line 672
    iget-object v5, v2, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v5, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 674
    :cond_11d
    iget-object v5, v2, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v5, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    .line 677
    :cond_121
    iget-object v5, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v4, v5}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    .line 679
    invoke-virtual {v4}, Ljava/io/ObjectStreamClass$FieldReflector;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v4

    iput-object v4, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 680
    iput-boolean v3, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    .line 681
    return-void
.end method

.method greylist-max-o initProxy(Ljava/lang/Class;Ljava/lang/ClassNotFoundException;Ljava/io/ObjectStreamClass;)V
    .registers 8
    .param p2, "resolveEx"    # Ljava/lang/ClassNotFoundException;
    .param p3, "superDesc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassNotFoundException;",
            "Ljava/io/ObjectStreamClass;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 566
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 567
    .local v0, "osc":Ljava/io/ObjectStreamClass;
    const/4 v1, 0x1

    if-eqz p1, :cond_15

    .line 568
    invoke-static {p1, v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;Z)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 569
    iget-boolean v2, v0, Ljava/io/ObjectStreamClass;->isProxy:Z

    if-eqz v2, :cond_d

    goto :goto_15

    .line 570
    :cond_d
    new-instance v1, Ljava/io/InvalidClassException;

    const-string v2, "cannot bind proxy descriptor to a non-proxy class"

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_15
    :goto_15
    iput-object p1, p0, Ljava/io/ObjectStreamClass;->cl:Ljava/lang/Class;

    .line 575
    iput-object p2, p0, Ljava/io/ObjectStreamClass;->resolveEx:Ljava/lang/ClassNotFoundException;

    .line 576
    iput-object p3, p0, Ljava/io/ObjectStreamClass;->superDesc:Ljava/io/ObjectStreamClass;

    .line 577
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 578
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 579
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 580
    sget-object v2, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 581
    if-eqz v0, :cond_47

    .line 582
    iput-object v0, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    .line 583
    iget-object v3, v0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 584
    iget-boolean v3, v0, Ljava/io/ObjectStreamClass;->externalizable:Z

    iput-boolean v3, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 585
    iget-object v3, v0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    .line 586
    iget-object v3, v0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    .line 587
    iget-object v3, v0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->deserializeEx:Ljava/io/ObjectStreamClass$ExceptionInfo;

    .line 588
    iget-object v3, v0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    iput-object v3, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    .line 590
    :cond_47
    iget-object v3, p0, Ljava/io/ObjectStreamClass;->localDesc:Ljava/io/ObjectStreamClass;

    invoke-static {v2, v3}, Ljava/io/ObjectStreamClass;->getReflector([Ljava/io/ObjectStreamField;Ljava/io/ObjectStreamClass;)Ljava/io/ObjectStreamClass$FieldReflector;

    move-result-object v2

    iput-object v2, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    .line 591
    iput-boolean v1, p0, Ljava/io/ObjectStreamClass;->initialized:Z

    .line 592
    return-void
.end method

.method greylist-max-o invokeReadObject(Ljava/lang/Object;Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1063
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1064
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    .line 1066
    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_10} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_28

    .line 1076
    :catch_11
    move-exception v0

    .line 1078
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1067
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_18
    move-exception v0

    .line 1068
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1069
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/ClassNotFoundException;

    if-nez v2, :cond_2e

    .line 1071
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_2a

    .line 1074
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1079
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_28
    nop

    .line 1083
    return-void

    .line 1072
    .restart local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_2a
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 1070
    :cond_2e
    move-object v2, v1

    check-cast v2, Ljava/lang/ClassNotFoundException;

    throw v2

    .line 1081
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeReadObjectNoData(Ljava/lang/Object;)V
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1094
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1095
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readObjectNoDataMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_27

    .line 1097
    const/4 v1, 0x0

    :try_start_8
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_d} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_21

    .line 1105
    :catch_e
    move-exception v0

    .line 1107
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1098
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_15
    move-exception v0

    .line 1099
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1100
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/ObjectStreamException;

    if-nez v2, :cond_23

    .line 1103
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1108
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_21
    nop

    .line 1112
    return-void

    .line 1101
    .restart local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_23
    move-object v2, v1

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    .line 1110
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeReadResolve(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1153
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1154
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->readResolveMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2c

    .line 1156
    const/4 v1, 0x0

    :try_start_8
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_e} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 1165
    :catch_f
    move-exception v0

    .line 1167
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1157
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_16
    move-exception v0

    .line 1158
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1159
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/ObjectStreamException;

    if-eqz v2, :cond_23

    .line 1160
    move-object v2, v1

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    .line 1162
    :cond_23
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1163
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1170
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeWriteObject(Ljava/lang/Object;Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1033
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1034
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeObjectMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2a

    .line 1036
    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_10} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_24

    .line 1044
    :catch_11
    move-exception v0

    .line 1046
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1037
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_18
    move-exception v0

    .line 1038
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1039
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/IOException;

    if-nez v2, :cond_26

    .line 1042
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1047
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :goto_24
    nop

    .line 1051
    return-void

    .line 1040
    .restart local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "th":Ljava/lang/Throwable;
    :cond_26
    move-object v2, v1

    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 1049
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o invokeWriteReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1123
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1124
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->writeReplaceMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2c

    .line 1126
    const/4 v1, 0x0

    :try_start_8
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_e} :catch_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 1135
    :catch_f
    move-exception v0

    .line 1137
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1127
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_16
    move-exception v0

    .line 1128
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 1129
    .local v1, "th":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/io/ObjectStreamException;

    if-eqz v2, :cond_23

    .line 1130
    move-object v2, v1

    check-cast v2, Ljava/io/ObjectStreamException;

    throw v2

    .line 1132
    :cond_23
    invoke-static {v1}, Ljava/io/ObjectStreamClass;->throwMiscException(Ljava/lang/Throwable;)V

    .line 1133
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1140
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "th":Ljava/lang/Throwable;
    :cond_2c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o isEnum()Z
    .registers 2

    .line 897
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 898
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    return v0
.end method

.method greylist-max-o isExternalizable()Z
    .registers 2

    .line 906
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 907
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    return v0
.end method

.method greylist-max-o isInstantiable()Z
    .registers 2

    .line 946
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 947
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method greylist-max-o isProxy()Z
    .registers 2

    .line 888
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 889
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    return v0
.end method

.method greylist-max-o isSerializable()Z
    .registers 2

    .line 915
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 916
    iget-boolean v0, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    return v0
.end method

.method greylist newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1011
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->requireInitialized()V

    .line 1012
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->cons:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_16

    .line 1014
    const/4 v1, 0x0

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    .line 1015
    :catch_f
    move-exception v0

    .line 1017
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1020
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o readNonProxy(Ljava/io/ObjectInputStream;)V
    .registers 14
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 692
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    .line 693
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectStreamClass;->isProxy:Z

    .line 696
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v1

    .line 697
    .local v1, "flags":B
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    move v2, v3

    goto :goto_1f

    :cond_1e
    move v2, v0

    :goto_1f
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    .line 699
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v0

    :goto_28
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->hasBlockExternalData:Z

    .line 701
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_30

    move v2, v3

    goto :goto_31

    :cond_30
    move v2, v0

    :goto_31
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    .line 703
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_39

    move v4, v3

    goto :goto_3a

    :cond_39
    move v4, v0

    .line 705
    .local v4, "sflag":Z
    :goto_3a
    if-eqz v2, :cond_49

    if-nez v4, :cond_3f

    goto :goto_49

    .line 706
    :cond_3f
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    const-string v3, "serializable and externalizable flags conflict"

    invoke-direct {v0, v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_49
    :goto_49
    if-nez v2, :cond_50

    if-eqz v4, :cond_4e

    goto :goto_50

    :cond_4e
    move v2, v0

    goto :goto_51

    :cond_50
    :goto_50
    move v2, v3

    :goto_51
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    .line 710
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_59

    move v2, v3

    goto :goto_5a

    :cond_59
    move v2, v0

    :goto_5a
    iput-boolean v2, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    .line 711
    if-eqz v2, :cond_86

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_6b

    goto :goto_86

    .line 712
    :cond_6b
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v2, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enum descriptor has non-zero serialVersionUID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/io/ObjectStreamClass;->suid:Ljava/lang/Long;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_86
    :goto_86
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v2

    .line 717
    .local v2, "numFields":I
    iget-boolean v5, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v5, :cond_aa

    if-nez v2, :cond_91

    goto :goto_aa

    .line 718
    :cond_91
    new-instance v0, Ljava/io/InvalidClassException;

    iget-object v3, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enum descriptor has non-zero field count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 721
    :cond_aa
    :goto_aa
    if-lez v2, :cond_af

    .line 722
    new-array v5, v2, [Ljava/io/ObjectStreamField;

    goto :goto_b1

    :cond_af
    sget-object v5, Ljava/io/ObjectStreamClass;->NO_FIELDS:[Ljava/io/ObjectStreamField;

    :goto_b1
    iput-object v5, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    .line 723
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b4
    if-ge v5, v2, :cond_103

    .line 724
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v6

    int-to-char v6, v6

    .line 725
    .local v6, "tcode":C
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 726
    .local v7, "fname":Ljava/lang/String;
    const/16 v8, 0x4c

    if-eq v6, v8, :cond_d2

    const/16 v8, 0x5b

    if-ne v6, v8, :cond_c8

    goto :goto_d2

    .line 727
    :cond_c8
    new-instance v8, Ljava/lang/String;

    new-array v9, v3, [C

    aput-char v6, v9, v0

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    goto :goto_d6

    :cond_d2
    :goto_d2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readTypeString()Ljava/lang/String;

    move-result-object v8

    .line 729
    .local v8, "signature":Ljava/lang/String;
    :goto_d6
    :try_start_d6
    iget-object v9, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    new-instance v10, Ljava/io/ObjectStreamField;

    invoke-direct {v10, v7, v8, v0}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v10, v9, v5
    :try_end_df
    .catch Ljava/lang/RuntimeException; {:try_start_d6 .. :try_end_df} :catch_e3

    .line 733
    nop

    .line 723
    .end local v6    # "tcode":C
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    .line 730
    .restart local v6    # "tcode":C
    .restart local v7    # "fname":Ljava/lang/String;
    .restart local v8    # "signature":Ljava/lang/String;
    :catch_e3
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/io/InvalidClassException;

    iget-object v9, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid descriptor for field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-virtual {v3, v0}, Ljava/io/InvalidClassException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 735
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v5    # "i":I
    .end local v6    # "tcode":C
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "signature":Ljava/lang/String;
    :cond_103
    invoke-direct {p0}, Ljava/io/ObjectStreamClass;->computeFieldOffsets()V

    .line 736
    return-void
.end method

.method greylist-max-o setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vals"    # [Ljava/lang/Object;

    .line 1313
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setObjFieldValues(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1314
    return-void
.end method

.method greylist-max-o setPrimFieldValues(Ljava/lang/Object;[B)V
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "buf"    # [B

    .line 1295
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->fieldRefl:Ljava/io/ObjectStreamClass$FieldReflector;

    invoke-virtual {v0, p1, p2}, Ljava/io/ObjectStreamClass$FieldReflector;->setPrimFieldValues(Ljava/lang/Object;[B)V

    .line 1296
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": static final long serialVersionUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "L;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    return-object v0
.end method

.method greylist-max-o writeNonProxy(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    iget-object v0, p0, Ljava/io/ObjectStreamClass;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "flags":B
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->externalizable:Z

    if-eqz v1, :cond_1f

    .line 747
    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 748
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->getProtocolVersion()I

    move-result v1

    .line 749
    .local v1, "protocol":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_27

    .line 750
    or-int/lit8 v2, v0, 0x8

    int-to-byte v0, v2

    goto :goto_27

    .line 752
    .end local v1    # "protocol":I
    :cond_1f
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->serializable:Z

    if-eqz v1, :cond_27

    .line 753
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    goto :goto_28

    .line 752
    :cond_27
    :goto_27
    nop

    .line 755
    :goto_28
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->hasWriteObjectData:Z

    if-eqz v1, :cond_2f

    .line 756
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 758
    :cond_2f
    iget-boolean v1, p0, Ljava/io/ObjectStreamClass;->isEnum:Z

    if-eqz v1, :cond_36

    .line 759
    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 761
    :cond_36
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 763
    iget-object v1, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 764
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v2, p0, Ljava/io/ObjectStreamClass;->fields:[Ljava/io/ObjectStreamField;

    array-length v3, v2

    if-ge v1, v3, :cond_65

    .line 765
    aget-object v2, v2, v1

    .line 766
    .local v2, "f":Ljava/io/ObjectStreamField;
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeCode()C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 767
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_62

    .line 769
    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeTypeString(Ljava/lang/String;)V

    .line 764
    .end local v2    # "f":Ljava/io/ObjectStreamField;
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 772
    .end local v1    # "i":I
    :cond_65
    return-void
.end method
