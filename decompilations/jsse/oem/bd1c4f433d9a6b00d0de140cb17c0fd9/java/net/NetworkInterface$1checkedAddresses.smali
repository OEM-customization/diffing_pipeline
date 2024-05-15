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
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private i:I

.field private local_addrs:[Ljava/net/InetAddress;

.field final synthetic this$0:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .registers 9
    .param p1, "this$0"    # Ljava/net/NetworkInterface;

    .prologue
    const/4 v4, 0x0

    .line 124
    iput-object p1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->this$0:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iput v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    .line 125
    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/net/InetAddress;

    iput-object v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    .line 126
    const/4 v3, 0x1

    .line 128
    .local v3, "trusted":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 129
    .local v2, "sec":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_25

    .line 131
    :try_start_1a
    new-instance v4, Ljava/net/NetPermission;

    const-string/jumbo v5, "getNetworkInformation"

    invoke-direct {v4, v5}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_25} :catch_54

    .line 136
    :cond_25
    :goto_25
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_26
    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_57

    .line 138
    if-eqz v2, :cond_41

    xor-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_41

    .line 139
    :try_start_33
    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 141
    :cond_41
    iget-object v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    iget v5, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v6

    aget-object v6, v6, v1

    aput-object v6, v4, v5
    :try_end_51
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_51} :catch_58

    .line 136
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 132
    .end local v1    # "j":I
    :catch_54
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x0

    goto :goto_25

    .line 145
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "j":I
    :cond_57
    return-void

    .line 142
    :catch_58
    move-exception v0

    .restart local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_51
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .prologue
    .line 156
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/net/NetworkInterface$1checkedAddresses;->nextElement()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 148
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    if-ge v0, v1, :cond_11

    .line 149
    iget-object v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    aget-object v0, v0, v1

    return-object v0

    .line 151
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
