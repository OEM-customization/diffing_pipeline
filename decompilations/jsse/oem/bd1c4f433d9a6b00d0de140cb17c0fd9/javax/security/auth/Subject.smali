.class public final Ljavax/security/auth/Subject;
.super Ljava/lang/Object;
.source "Subject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/security/auth/Subject$AuthPermissionHolder;,
        Ljavax/security/auth/Subject$ClassSet;,
        Ljavax/security/auth/Subject$SecureSet;
    }
.end annotation


# static fields
.field private static final NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

.field private static final PRINCIPAL_SET:I = 0x1

.field private static final PRIV_CREDENTIAL_SET:I = 0x3

.field private static final PUB_CREDENTIAL_SET:I = 0x2

.field private static final serialVersionUID:J = -0x734dcd6cffcc0598L


# instance fields
.field principals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field transient privCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient pubCredentials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile readOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/ProtectionDomain;

    .line 134
    sput-object v0, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 157
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 156
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 159
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 161
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 162
    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .param p1, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/Principal;",
            ">;",
            "Ljava/util/Set",
            "<*>;",
            "Ljava/util/Set",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "principals":Ljava/util/Set;, "Ljava/util/Set<+Ljava/security/Principal;>;"
    .local p3, "pubCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p4, "privCredentials":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 203
    if-eqz p2, :cond_a

    .line 204
    if-nez p3, :cond_17

    .line 206
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    .line 207
    const-string/jumbo v1, "invalid.null.input.s."

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_17
    if-eqz p4, :cond_a

    .line 209
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    .line 210
    const/4 v1, 0x1

    .line 209
    invoke-direct {v0, p0, v1, p2}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    .line 211
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    .line 212
    const/4 v1, 0x2

    .line 211
    invoke-direct {v0, p0, v1, p3}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 213
    new-instance v0, Ljavax/security/auth/Subject$SecureSet;

    .line 214
    const/4 v1, 0x3

    .line 213
    invoke-direct {v0, p0, v1, p4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 215
    iput-boolean p1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 216
    return-void
.end method

.method private static createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;
    .registers 3
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p1, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 558
    new-instance v0, Ljavax/security/auth/Subject$2;

    invoke-direct {v0, p0, p1}, Ljavax/security/auth/Subject$2;-><init>(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)V

    .line 557
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    return-object v0
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    .registers 6
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 347
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 348
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 350
    :cond_b
    if-nez p1, :cond_1a

    .line 351
    new-instance v2, Ljava/lang/NullPointerException;

    .line 352
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    :cond_1a
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 361
    .local v0, "currentAcc":Ljava/security/AccessControlContext;
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 359
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static doAs(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    .registers 6
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 409
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 410
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 413
    :cond_b
    if-nez p1, :cond_1a

    .line 414
    new-instance v2, Ljava/lang/NullPointerException;

    .line 415
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 414
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_1a
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    .line 423
    .local v0, "currentAcc":Ljava/security/AccessControlContext;
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 421
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 7
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 466
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 467
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 470
    :cond_b
    if-nez p1, :cond_1a

    .line 471
    new-instance v2, Ljava/lang/NullPointerException;

    .line 472
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_1a
    if-nez p2, :cond_2c

    .line 478
    new-instance v0, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 484
    .local v0, "callerAcc":Ljava/security/AccessControlContext;
    :goto_23
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 482
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 479
    .end local v0    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_2c
    move-object v0, p2

    .restart local v0    # "callerAcc":Ljava/security/AccessControlContext;
    goto :goto_23
.end method

.method public static doAsPrivileged(Ljavax/security/auth/Subject;Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    .registers 7
    .param p0, "subject"    # Ljavax/security/auth/Subject;
    .param p2, "acc"    # Ljava/security/AccessControlContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/security/auth/Subject;",
            "Ljava/security/PrivilegedExceptionAction",
            "<TT;>;",
            "Ljava/security/AccessControlContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/PrivilegedActionException;
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "action":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 533
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_b

    .line 534
    sget-object v2, Ljavax/security/auth/Subject$AuthPermissionHolder;->DO_AS_PRIVILEGED_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 537
    :cond_b
    if-nez p1, :cond_1a

    .line 538
    new-instance v2, Ljava/lang/NullPointerException;

    .line 539
    const-string/jumbo v3, "invalid.null.action.provided"

    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    :cond_1a
    if-nez p2, :cond_2c

    .line 544
    new-instance v0, Ljava/security/AccessControlContext;

    sget-object v2, Ljavax/security/auth/Subject;->NULL_PD_ARRAY:[Ljava/security/ProtectionDomain;

    invoke-direct {v0, v2}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 550
    .local v0, "callerAcc":Ljava/security/AccessControlContext;
    :goto_23
    invoke-static {p0, v0}, Ljavax/security/auth/Subject;->createContext(Ljavax/security/auth/Subject;Ljava/security/AccessControlContext;)Ljava/security/AccessControlContext;

    move-result-object v2

    .line 548
    invoke-static {p1, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 545
    .end local v0    # "callerAcc":Ljava/security/AccessControlContext;
    :cond_2c
    move-object v0, p2

    .restart local v0    # "callerAcc":Ljava/security/AccessControlContext;
    goto :goto_23
.end method

.method private getCredHashCode(Ljava/lang/Object;)I
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 943
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 944
    :catch_5
    move-exception v0

    .line 945
    .local v0, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static getSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .registers 4
    .param p0, "acc"    # Ljava/security/AccessControlContext;

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 286
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 287
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->GET_SUBJECT_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 290
    :cond_b
    if-nez p0, :cond_1a

    .line 291
    new-instance v1, Ljava/lang/NullPointerException;

    .line 292
    const-string/jumbo v2, "invalid.null.AccessControlContext.provided"

    .line 291
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_1a
    new-instance v1, Ljavax/security/auth/Subject$1;

    invoke-direct {v1, p0}, Ljavax/security/auth/Subject$1;-><init>(Ljava/security/AccessControlContext;)V

    .line 296
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/Subject;

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 966
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 968
    .local v0, "gf":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v3, "readOnly"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 970
    const-string/jumbo v3, "principals"

    invoke-virtual {v0, v3, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 973
    .local v1, "inputPrincs":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    if-nez v1, :cond_28

    .line 974
    new-instance v3, Ljava/lang/NullPointerException;

    .line 975
    const-string/jumbo v4, "invalid.null.input.s."

    invoke-static {v4}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 978
    :cond_28
    :try_start_28
    new-instance v3, Ljavax/security/auth/Subject$SecureSet;

    .line 979
    const/4 v4, 0x1

    .line 978
    invoke-direct {v3, p0, v4, v1}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;ILjava/util/Set;)V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_34} :catch_4d

    .line 990
    :goto_34
    new-instance v3, Ljavax/security/auth/Subject$SecureSet;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 989
    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    .line 992
    new-instance v3, Ljavax/security/auth/Subject$SecureSet;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 991
    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    .line 993
    return-void

    .line 980
    :catch_4d
    move-exception v2

    .line 984
    .local v2, "npe":Ljava/lang/NullPointerException;
    new-instance v3, Ljavax/security/auth/Subject$SecureSet;

    invoke-direct {v3, p0, v5}, Ljavax/security/auth/Subject$SecureSet;-><init>(Ljavax/security/auth/Subject;I)V

    .line 983
    invoke-static {v3}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    goto :goto_34
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v0

    .line 955
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 957
    return-void

    .line 954
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 793
    if-nez p1, :cond_5

    .line 794
    return v6

    .line 796
    :cond_5
    if-ne p0, p1, :cond_8

    .line 797
    return v7

    .line 799
    :cond_8
    instance-of v4, p1, Ljavax/security/auth/Subject;

    if-eqz v4, :cond_55

    move-object v0, p1

    .line 801
    check-cast v0, Ljavax/security/auth/Subject;

    .line 805
    .local v0, "that":Ljavax/security/auth/Subject;
    iget-object v5, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v5

    .line 807
    :try_start_12
    new-instance v1, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_23

    .local v1, "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    monitor-exit v5

    .line 809
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 810
    return v6

    .line 805
    .end local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :catchall_23
    move-exception v4

    monitor-exit v5

    throw v4

    .line 814
    .restart local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    :cond_26
    iget-object v5, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v5

    .line 816
    :try_start_29
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3a

    .local v3, "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v5

    .line 818
    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 819
    return v6

    .line 814
    .end local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_3a
    move-exception v4

    monitor-exit v5

    throw v4

    .line 823
    .restart local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_3d
    iget-object v5, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v5

    .line 825
    :try_start_40
    new-instance v2, Ljava/util/HashSet;

    iget-object v4, v0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_51

    .local v2, "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    monitor-exit v5

    .line 827
    iget-object v4, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 828
    return v6

    .line 823
    .end local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :catchall_51
    move-exception v4

    monitor-exit v5

    throw v4

    .line 830
    .restart local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_54
    return v7

    .line 832
    .end local v0    # "that":Ljavax/security/auth/Subject;
    .end local v1    # "thatPrincipals":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    .end local v2    # "thatPrivCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v3    # "thatPubCredentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_55
    return v6
.end method

.method public getPrincipals()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    return-object v0
.end method

.method public getPrincipals(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/Principal;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_f

    .line 619
    new-instance v0, Ljava/lang/NullPointerException;

    .line 620
    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_f
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0
.end method

.method public getPrivateCredentials()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 761
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_f

    .line 762
    new-instance v0, Ljava/lang/NullPointerException;

    .line 763
    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :cond_f
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0
.end method

.method public getPublicCredentials()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    iget-object v0, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    return-object v0
.end method

.method public getPublicCredentials(Ljava/lang/Class;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 714
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_f

    .line 715
    new-instance v0, Ljava/lang/NullPointerException;

    .line 716
    const-string/jumbo v1, "invalid.null.Class.provided"

    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_f
    new-instance v0, Ljavax/security/auth/Subject$ClassSet;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1}, Ljavax/security/auth/Subject$ClassSet;-><init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 919
    const/4 v0, 0x0

    .line 921
    .local v0, "hashCode":I
    iget-object v5, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v5

    .line 922
    :try_start_4
    iget-object v4, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 923
    .local v2, "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 924
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;

    .line 925
    .local v1, "p":Ljava/security/Principal;
    invoke-interface {v1}, Ljava/security/Principal;->hashCode()I
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_36

    move-result v4

    xor-int/2addr v0, v4

    goto :goto_a

    .end local v1    # "p":Ljava/security/Principal;
    :cond_1c
    monitor-exit v5

    .line 929
    iget-object v5, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v5

    .line 930
    :try_start_20
    iget-object v4, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 931
    .local v3, "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 932
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Ljavax/security/auth/Subject;->getCredHashCode(Ljava/lang/Object;)I
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_3b

    move-result v4

    xor-int/2addr v0, v4

    goto :goto_26

    .line 921
    .end local v2    # "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    .end local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_36
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "pIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    .restart local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_39
    monitor-exit v5

    .line 935
    return v0

    .line 929
    .end local v3    # "pubCIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_3b
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public isReadOnly()Z
    .registers 2

    .prologue
    .line 255
    iget-boolean v0, p0, Ljavax/security/auth/Subject;->readOnly:Z

    return v0
.end method

.method public setReadOnly()V
    .registers 3

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 240
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_b

    .line 241
    sget-object v1, Ljavax/security/auth/Subject$AuthPermissionHolder;->SET_READ_ONLY_PERMISSION:Ljavax/security/auth/AuthPermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 244
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/security/auth/Subject;->readOnly:Z

    .line 245
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 843
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/security/auth/Subject;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Z)Ljava/lang/String;
    .registers 12
    .param p1, "includePrivateCredentials"    # Z

    .prologue
    .line 853
    const-string/jumbo v7, "Subject."

    invoke-static {v7}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 854
    .local v4, "s":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 856
    .local v6, "suffix":Ljava/lang/String;
    iget-object v8, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v8

    .line 857
    :try_start_d
    iget-object v7, p0, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 858
    .local v3, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 859
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Principal;

    .line 860
    .local v1, "p":Ljava/security/Principal;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ".Principal."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 861
    invoke-interface {v1}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v9

    .line 860
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 861
    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 860
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_8b

    move-result-object v6

    goto :goto_13

    .end local v1    # "p":Ljava/security/Principal;
    :cond_4b
    monitor-exit v8

    .line 865
    iget-object v8, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v8

    .line 866
    :try_start_4f
    iget-object v7, p0, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 867
    .local v2, "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 868
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 869
    .local v0, "o":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 870
    const-string/jumbo v9, ".Public.Credential."

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 869
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 871
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 869
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 871
    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 869
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_89
    .catchall {:try_start_4f .. :try_end_89} :catchall_d0

    move-result-object v6

    goto :goto_55

    .line 856
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :catchall_8b
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .restart local v3    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/Principal;>;"
    :cond_8e
    monitor-exit v8

    .line 875
    if-eqz p1, :cond_ed

    .line 876
    iget-object v8, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v8

    .line 877
    :try_start_94
    iget-object v7, p0, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 878
    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_ff

    move-result v7

    if-eqz v7, :cond_ec

    .line 880
    :try_start_a0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 881
    .restart local v0    # "o":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 882
    const-string/jumbo v9, ".Private.Credential."

    .line 881
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 883
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 881
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 884
    const-string/jumbo v9, "NEWLINE"

    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 881
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ce
    .catch Ljava/lang/SecurityException; {:try_start_a0 .. :try_end_ce} :catch_d3
    .catchall {:try_start_a0 .. :try_end_ce} :catchall_ff

    move-result-object v6

    goto :goto_9a

    .line 865
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catchall_d0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 885
    .restart local v2    # "pI":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :catch_d3
    move-exception v5

    .line 886
    .local v5, "se":Ljava/lang/SecurityException;
    :try_start_d4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 887
    const-string/jumbo v9, ".Private.Credential.inaccessible."

    .line 886
    invoke-static {v9}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_eb
    .catchall {:try_start_d4 .. :try_end_eb} :catchall_ff

    move-result-object v6

    .end local v5    # "se":Ljava/lang/SecurityException;
    :cond_ec
    monitor-exit v8

    .line 893
    :cond_ed
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 876
    :catchall_ff
    move-exception v7

    monitor-exit v8

    throw v7
.end method
