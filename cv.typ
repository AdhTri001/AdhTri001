#import "clickworthy-resume/lib.typ": *

// Personal Information
#let name = "Adheesh Trivedi"
#let email = "adheeshtrivedi@gmail.com"
#let github = "github.com/AdhTri001"
#let linkedin = "linkedin.com/in/AdhTri001"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + github)[#github]],
  [#link("https://" + linkedin)[#linkedin]],
)
#let location = "Indian Institute of Science Education and Research (IISER) Bhopal, India"

// Professional Summary
#let summary = "Fourth-year CSE student who enjoys algorithms, graph theory, parameterized / exact methods, complexity, and model checking.  I enjoy turning clean theoretical ideas it into clear, efficient code. I care about clarity, collaborative exploration, and implementations that mirror the elegance of the underlying mathematics.
In addition to academics, I enjoy playing music instruments, practicing speed typing, and competitive programming."

// Resume configuration
#let theme = rgb("#26428b")
#let font = "New Computer Modern"
#let fontSize = 11pt
#let lang = "en"
#let margin = (
  top: 3em,
  bottom: 3em,
  left: 4em,
  right: 4em,
)

// Ensure A4 page size
#set page(width: 210mm, height: 297mm)

#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  summary: summary,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

// ---------------------------------------------------------------------------
// Tailored CV content for Theoretical Computer Science graduate applications

// Research Interests / Summary Focus (concise – complements top summary block)
// Import reusable configuration (interest helpers & datasets)
#import "config.typ": interest-line, latex

= Academic Interests

#interest-line((
  "Algorithms",
  "Graph Theory",
  "Complexity Theory",
  "Model Checking & Formal Verification",
  "Parsing & Domain-Specific Languages",
  "Low Level Programming",
  "Machine Learning"
))

// Education
= Education

#edu(
  institution: "IISER Bhopal",
  date: "2022 – 2026*",
  location: "Bhopal, India",
  degrees: (
    ("B.S.", "Computer Science & Engineering"),
  ),
  gpa: "9.08*/10 (3.63/4)",
  courses: (
    "Linear Algebra",
    "Multivariable Calculus",
    "Discrete Mathematics",
    "Probability & Statistics",
    "Complex Variables",
    "Real Analysis",
    "Applied Optimization",
    "Introduction to C Programming",
    "Data Structures & Algorithms",
    "Signals & Systems",
    "Theory of Computation",
    "Principles of Model Checking",
    "Fundamentals of Database Systems",
    "Machine Learning",
    "Computer Vision",
    "Artificial Intelligence",
    "Group Theory*",
    "Cryptography*",
    "Information Theory & Coding*",
    "Computer Organization*"
  ),
)

// Research & Reading Projects
= Research & Reading Projects

#exp(
  title: "Series of Research Projects in Theoretical Computer Science",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: "Jan 2025 – Present",
  details: [
    - Explored graph coloring & exam scheduling formulations; studied reductions related to P vs NP.
    - Read about #smallcaps[VC Dimension] and its efficient algorithms.
    - Investigated treewidth; applied tree decompositions to dynamic programming on hard problems.
    - Studied  #smallcaps[Parameterized Complexity] and the #smallcaps[Exponential Time Hypothesis].
    - Working on different sorts of graph coloring algorithms, such as #smallcaps[Robust Coloring].
  ],
)

#exp(
  title: "Reading Project on Graph Theory",
  organization: "Mentor: Dr. Prafullkumar Tale",
  date: "Jan 2024 – Apr 2024",
  details: [
    - Studied #emph[A First Look at Graph Theory] (Clark & Holton) with problem solving.
    - Reinforced concepts: Graphs & their types, connectivity, traversals, matching problem,
      planarity.
  ],
)

// Software / Applied Projects with Theoretical Emphasis
= Selected Projects

#exp(
  title: "Extensively Customizable Exam Scheduler (Graph Coloring)",
  organization: "Vivek Kumar, Rahul Jana, Ayushman Shaha, Dr. Prafullkumar Tale",
  date: "Oct 2024 – Jan 2025",
  details: [
    - Discovered that exam schedules for 14,000+ students and course registrations were being created manually,
      requiring significant effort.
    - Developed an engine that assigns exams to time slots & halls minimizing same-day conflicts ($<=$24h) using graph coloring + randomized optimization heuristics.
    - Supports multi-hall allocation when enrollment exceeds single capacity; leverages NetworkX for constraint modeling.
  ],
)

#exp(
  title: "Texture Classification & Face Clustering for Image Search",
  date: "Sep 2024 – Nov 2024",
  details: [
    - Pipeline: MTCNN detection → InceptionResNetV1 embeddings → cosine similarity for face grouping.
    - Implemented batching to control GPU memory; evaluated multiple texture descriptors for retrieval precision.
  ],
)

#exp(
  title: "Bag-of-Words Chatbot (Context-Aware)",
  date: "Oct 2021 – Dec 2021",
  details: [
    - Built custom intent dataset; sequential NN (TensorFlow) with context retention across turns.
    - Features: to-do lists, definitions, time-zone queries, note taking; PyQt5 interface.
  ],
)

#exp(
  title: "General Purpose Discord Bot",
  date: "Mar 2021",
  details: [
    - Implemented modules for moderation, games, music playback, jokes & meme generation.
  ],
)

// Internships (Dev & Scientific Tooling)
= Internships

#exp(
  title: "Scientific Tool Developer Intern",
  organization: "Mentor: Dr. Arpit Sharma",
  date: "Dec 2024 – Present",
  details: [
  - Developing high-performance converters between action-labeled models (#link("https://cadp.inria.fr/")[CADP])
    and (#link("https://www.mcrl2.org/")[mCRL2]) and state-labeled models (#link("https://www.prismmodelchecker.org/")[PRISM]) / (#link("https://www.stormchecker.org/")[Storm]) to enable cross-ecosystem model checking.
  - Emphasis on parser design, memory-efficient graph transformations, semantic preservation,
    and inter-operability testing using #link("http://nusmv.fbk.eu/")[NuSMV].
  ],
)

#exp(
  title: "GUI Developer Intern (Litesoph, AITG)",
  organization: "Mentor: Prof. Varadharajan Srinivasan",
  date: "Feb 2024 – Aug 2024",
  details: [
  - Led integration of scientific engines (#link("https://octopus-code.org/")[Octopus], #link("https://gpaw.readthedocs.io/")[GPAW], #link("https://www.nwchem-sw.org/")[NWChem]) within a Python toolkit for photo-induced phenomena simulations.
  - Automated submission workflows and job orchestration on national HPC clusters (PARAM-Ganga / PARAM-Kamrupa).
  ],
)

// Leadership & Service
= Leadership & Service
#exp(
  title: "Coordinator – Coding Club",
  organization: "IISER Bhopal",
  date: "May 2024 – May 2025",
  details: [
    - Organized onsite competitive programming contests; facilitated open discussion & tutorial sessions.
    - Promoted problem-solving culture; mentored peers in algorithmic thinking.
  ],
)

#exp(
  title: "Hackathon Organizer – Armacode 0",
  organization: "IISER Bhopal × IIIT Bhopal",
  date: "Jan 2024 – Apr 2024",
  details: [
    - Co-organized a 35-hour national hackathon; collaborated with faculty and industry experts on problem design and judging.
  ],
)

// Technical Skills (clustered for theoretical CS emphasis)
= Skills

#show "LaTeX" : latex

#skills((
  (
    "Theory / Formal",
    (
      [Graph Theory],
      [Model Checking],
      [Parameterized Algorithms],
      [Complexity Theory],
      [Combinatorial Optimization],
    ),
  ),
  (
    "Algorithms & Tooling",
    (
      [Tree Decomposition],
      [ILP Modeling],
      [Reinforcement Learning],
      [NetworkX],
      [Graph Coloring],
      [Parsers],
    ),
  ),
  (
    "Computer Languages",
    (
      [Python],
      [C++],
      [TypeScript],
      [LaTeX]
    ),
  ),
))

// Interests (compact)
= Additional Interests
#interest-line((
  "Music (Guitar)",
  "Competitive Programming",
  "Speed Typing",
  "Mathematical Visualization (Desmos)"
))

// Publications section can be added if bibliography entries are available.
