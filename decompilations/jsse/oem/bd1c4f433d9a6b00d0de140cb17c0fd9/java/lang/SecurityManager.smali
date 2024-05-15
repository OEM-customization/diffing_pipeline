.class public Ljava/lang/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# instance fields
.field protected inCheck:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public checkAccept(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 165
    return-void
.end method

.method public checkAccess(Ljava/lang/Thread;)V
    .registers 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 137
    return-void
.end method

.method public checkAccess(Ljava/lang/ThreadGroup;)V
    .registers 2
    .param p1, "g"    # Ljava/lang/ThreadGroup;

    .prologue
    .line 139
    return-void
.end method

.method public checkAwtEventQueueAccess()V
    .registers 1

    .prologue
    .line 187
    return-void
.end method

.method public checkConnect(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 159
    return-void
.end method

.method public checkConnect(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 161
    return-void
.end method

.method public checkCreateClassLoader()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method public checkDelete(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 157
    return-void
.end method

.method public checkExec(Ljava/lang/String;)V
    .registers 2
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public checkExit(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 141
    return-void
.end method

.method public checkLink(Ljava/lang/String;)V
    .registers 2
    .param p1, "lib"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public checkListen(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 163
    return-void
.end method

.method public checkMemberAccess(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "maddr"    # Ljava/net/InetAddress;

    .prologue
    .line 167
    return-void
.end method

.method public checkMulticast(Ljava/net/InetAddress;B)V
    .registers 3
    .param p1, "maddr"    # Ljava/net/InetAddress;
    .param p2, "ttl"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    return-void
.end method

.method public checkPackageAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 189
    return-void
.end method

.method public checkPackageDefinition(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;)V
    .registers 2
    .param p1, "perm"    # Ljava/security/Permission;

    .prologue
    .line 127
    return-void
.end method

.method public checkPermission(Ljava/security/Permission;Ljava/lang/Object;)V
    .registers 3
    .param p1, "perm"    # Ljava/security/Permission;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 131
    return-void
.end method

.method public checkPrintJobAccess()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method

.method public checkPropertiesAccess()V
    .registers 1

    .prologue
    .line 175
    return-void
.end method

.method public checkPropertyAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public checkRead(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 147
    return-void
.end method

.method public checkRead(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 149
    return-void
.end method

.method public checkRead(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 151
    return-void
.end method

.method public checkSecurityAccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method

.method public checkSetFactory()V
    .registers 1

    .prologue
    .line 193
    return-void
.end method

.method public checkSystemClipboardAccess()V
    .registers 1

    .prologue
    .line 185
    return-void
.end method

.method public checkTopLevelWindow(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "window"    # Ljava/lang/Object;

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public checkWrite(Ljava/io/FileDescriptor;)V
    .registers 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 153
    return-void
.end method

.method public checkWrite(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method protected classDepth(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    const/4 v0, -0x1

    return v0
.end method

.method protected classLoaderDepth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    const/4 v0, -0x1

    return v0
.end method

.method protected currentClassLoader()Ljava/lang/ClassLoader;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected currentLoadedClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getClassContext()[Ljava/lang/Class;
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInCheck()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    iget-boolean v0, p0, Ljava/lang/SecurityManager;->inCheck:Z

    return v0
.end method

.method public getSecurityContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThreadGroup()Ljava/lang/ThreadGroup;
    .registers 2

    .prologue
    .line 203
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method protected inClass(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected inClassLoader()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method
