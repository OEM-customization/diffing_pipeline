.class Ljava/net/NetworkInterface$1checkedAddresses;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkedAddresses"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist count:I

.field private blacklist i:I

.field private blacklist local_addrs:[Ljava/net/InetAddress;

.field final synthetic blacklist this$0:Ljava/net/NetworkInterface;


# direct methods
.method constructor blacklist <init>(Ljava/net/NetworkInterface;)V
    .registers 8
    .param p1, "this$0"    # Ljava/net/NetworkInterface;

    .line 149
    iput-object p1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->this$0:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iput v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    .line 150
    # getter for: Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;
    invoke-static {p1}, Ljava/net/NetworkInterface;->access$000(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    .line 151
    const/4 v0, 0x1

    .line 153
    .local v0, "trusted":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 154
    .local v1, "sec":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_27

    .line 156
    :try_start_1a
    new-instance v2, Ljava/net/NetPermission;

    const-string v3, "getNetworkInformation"

    invoke-direct {v2, v3}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_24} :catch_25

    .line 159
    goto :goto_27

    .line 157
    :catch_25
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    .line 161
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_27
    :goto_27
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_28
    # getter for: Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;
    invoke-static {p1}, Ljava/net/NetworkInterface;->access$000(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_57

    .line 163
    if-eqz v1, :cond_41

    if-nez v0, :cond_41

    .line 164
    :try_start_33
    # getter for: Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;
    invoke-static {p1}, Ljava/net/NetworkInterface;->access$000(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 166
    :cond_41
    iget-object v3, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    iget v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    # getter for: Ljava/net/NetworkInterface;->addrs:[Ljava/net/InetAddress;
    invoke-static {p1}, Ljava/net/NetworkInterface;->access$000(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v5

    aget-object v5, v5, v2

    aput-object v5, v3, v4
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_51} :catch_52

    goto :goto_53

    .line 167
    :catch_52
    move-exception v3

    :goto_53
    nop

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 170
    .end local v2    # "j":I
    :cond_57
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasMoreElements()Z
    .registers 3

    .line 181
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 144
    invoke-virtual {p0}, Ljava/net/NetworkInterface$1checkedAddresses;->nextElement()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/net/InetAddress;
    .registers 4

    .line 173
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    if-ge v0, v1, :cond_f

    .line 174
    iget-object v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    aget-object v0, v1, v0

    return-object v0

    .line 176
    :cond_f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
