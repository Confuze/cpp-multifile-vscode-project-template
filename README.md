<h1 align="center">Starter template for multifile c++ projects in vscode</h1>
A simple template for c++ projects with multiple files and libraries compiled using g++ and make.<br />
Mostly based on Talha Balaj's <a href="https://dev.to/talhabalaj/setup-visual-studio-code-for-multi-file-c-projects-1jpi">guide</a> with some changes of my own.
<h2>Installation & Usage</h2>
<ol>
    <li>Install the following vscode extensions: C/C++, Makefile tools and optionally C/C++ Themes</li>
    <li>Install the following tools: make, g++ and gdb</li>
    <li>Clone the repo:
    <pre>git clone https://github.com/Confuze/cpp-multifile-vscode-project-template</pre>
    or download a zip containing the project files</li>
    <li>Open the repo in vscode:
    <pre>code cpp-multifile-vscode-project-template/</pre>
    </li>
    <li>You're good to go! Hit f5 to debug and ctr+shift+b to compile. If vsc asks you to select the debug configuration, select the first "(gdb) Launch" option.</li>
</ol>

Tested on manjaro linux x64, may or may not work on other systems. I was to lazy to add an intellisense configuration for MacOS and Windows, so you'll have to do that yourself, <a href="https://code.visualstudio.com/docs/cpp/c-cpp-properties-schema-reference">documentation</a>.
