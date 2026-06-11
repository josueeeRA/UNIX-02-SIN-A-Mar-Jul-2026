# ============================================================================
# Course Development Environment Dockerfile
# Reference: Black Hat Bash (BHB) - Chapters 1-3
# Name: Josué Ramírez
# ============================================================================

# ----------------------------------------------------------------------------
# Block A & B: Base Image and Layer/Cache Management
# ----------------------------------------------------------------------------
# A base image is a pre-configured, frozen blueprint of an operating system 
# used as the starting point for building our custom container environment (BHB Ch.3). 
# We use Kali Linux ('kali-rolling') because it comes pre-packed with security 
# and networking tools, saving setup time. Everything we install later stacks 
# on top of this foundation.
#
# Instruction order is critical in Docker because each command creates a 
# read-only layer. Docker caches these layers. If an early line changes, 
# its cache and all subsequent layers are invalidated, forcing a slow rebuild. 
# Keeping stable instructions at the top optimizes build speed (BHB Ch.3).
FROM kalilinux/kali-rolling:latest


# ----------------------------------------------------------------------------
# Block C: Permanent Environment Variables
# ----------------------------------------------------------------------------
# Environment variables are system-wide global variables accessible by any 
# running process to change its configuration or behavior (BHB Ch.1).
#
# - DEBIAN_FRONTEND=noninteractive: Prevents the package manager (apt) from 
#   triggering interactive prompts, automatically applying default choices to 
#   prevent the build from freezing indefinitely.
# - LANG & LC_ALL=es_ES.UTF-8: Configures the locale and character encoding 
#   to UTF-8, ensuring special symbols, accents, and characters render properly.
# - TERM=xterm-256color: Instructs terminal applications (like vim or htop) 
#   that the environment supports 256 colors for syntax highlighting.
#
# Note: The backslash "\" acts as a line continuation character to group 
# related variables into a single instruction for readability (BHB Ch.1).
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# ----------------------------------------------------------------------------
# Block D: Pre-answering Wireshark Interactive Prompts
# ----------------------------------------------------------------------------
# During installation, Wireshark normally interrupts with a prompt asking if 
# non-root users should have packet-capturing privileges. Since this automated 
# build has no human interaction and we operate as root inside this lab, 
# 'debconf-set-selections' feeds the 'false' answer into the system registry 
# beforehand via a standard input pipe (|) to bypass the block (BHB Ch.1 & Ch.3).
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

# ----------------------------------------------------------------------------
# Block E: Software Installation via APT
# ----------------------------------------------------------------------------
# 'apt-get update' syncs the local repository index with online servers, while 
# 'apt-get install' downloads and sets up the specified software (BHB Ch.3).
#
# Flags used:
# - '-y': Automatically answers 'yes' to confirmation prompts.
# - '--no-install-recommends': Skips non-essential optional packages, 
#   saving hundreds of megabytes of image space.
#
# Why ONE big RUN block? 
# To drastically optimize image size. Each RUN creates a permanent layer. By 
# chaining everything into a single command using the logical AND operator (&&), 
# Docker creates only one layer. The trailing backslashes (\) break the 
# single-line command into a readable vertical list.
#
# Selected Tool Explanations:
# - gawk / sed / grep: Fundamental Unix text processing tools for searching, 
#   filtering, and stream editing (BHB Ch.2).
# - shellcheck: A static analysis tool to find bugs or warnings in Bash scripts.
# - nmap / masscan: Network discovery and port-scanning tools for mapping targets.
# - tcpdump / tshark: Tools for capturing and analyzing live network traffic (BHB Ch.3).
# - tor / proxychains4: Privacy utilities to route traffic through proxies or the Tor network.
# - jq: A command-line processor specifically designed for parsing JSON data.
# - man-db: Restores the system documentation manuals ('man' pages) which are 
#   stripped out of the default Kali image to save space.
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim \
    vim \
    zsh \
    bash-completion \
    perl \
    make \
    gawk \
    sed \
    grep \
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    man-db \
    manpages \
    manpages-posix \
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    shellcheck \
    nmap \
    masscan \
    tcpdump \
    tshark \
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    httpie \

# ----------------------------------------------------------------------------
# Block F: Localizing and Activating Spanish Locale
# ----------------------------------------------------------------------------
# We use 'sed -i' to perform an in-place stream edit on '/etc/locale.gen', 
# uncommenting the Spanish locale line. Then, 'locale-gen' compiles the 
# selected language definitions so the system can use Spanish formatting (BHB Ch.2).
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
# ----------------------------------------------------------------------------
# Block G: Cache Cleanup
# ----------------------------------------------------------------------------
# 'apt-get clean' clears the downloaded package files (.deb), and 'rm -rf' 
# deletes temporary repository metadata. This cleanup must happen within the 
# EXACT SAME 'RUN' instruction. If done in a separate RUN, the files are deleted 
# only in a newer layer, but they remain permanently embedded in the previous 
# layer's history, wasting image space.
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# ----------------------------------------------------------------------------
# Block H: Default Build Shell Configuration
# ----------------------------------------------------------------------------
# The SHELL instruction overrides Docker's default basic interpreter (/bin/sh) 
# and switches it to Bash ('-c' flag executes the string commands). This ensures 
# any advanced scripting syntax utilized in future RUN steps compiles 
# reliably (BHB Ch.1).
SHELL ["/bin/bash", "-c"]

# ----------------------------------------------------------------------------
# Block I: Working Directory Setup
# ----------------------------------------------------------------------------
# WORKDIR establishes the default file path directory inside the container. 
# Since cloud tools like GitHub Codespaces mount repository code into the 
# '/workspaces' folder, setting this ensures the interactive terminal opens 
# directly in front of our course materials upon launch.
WORKDIR /workspaces

# ----------------------------------------------------------------------------
# Block J: System-Wide Git Configuration
# ----------------------------------------------------------------------------
# - 'safe.directory *': Trust all mounted repos, resolving file owner UID mismatches.
# - 'init.defaultBranch main': Sets 'main' as the default branch for new repos.
# - 'pull.rebase false': Sets standard merge behavior during pulls.
# - 'git lfs install --system': Globally initializes Large File Storage hooks.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# Block K & L: Logon Shell Change and Custom Shell Prompt (Heredoc)
# ----------------------------------------------------------------------------
# 'chsh -s' changes the default login shell for the root user to Bash.
RUN chsh -s /usr/bin/bash root

# A Here-Document ('cat >> ... << 'EOF'') redirects multiple lines of string data 
# into a file from within the script without manual echoes. Here, it appends a 
# custom PROMPT string into '.zshrc' to visually personalize the command prompt 
# and output standard exit status indicators (GOOD/BAD) (BHB Ch.1).
RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Josue-Ramirez]%f %F{yellow}%1~%f %(?.%F{green}GOOD.%F{red}BAD %?)%f %#'
EOF

# ----------------------------------------------------------------------------
# Block M: Default Runtime Container Command
# ----------------------------------------------------------------------------
# CMD defines the default program that executes automatically when the container 
# spins up (in this case, starting an interactive Bash shell) (BHB Ch.3). 
# Difference: RUN executes *during* the build phase to permanently bake changes 
# into the image, whereas CMD acts as a default launch command *after* the 
# container starts running. Cloud environments can override CMD.
CMD ["/usr/bin/bash"]
