import { Navbar, WelcomePage, Loader, Services, Transactions, Footer } from "./components"

const App = () => {

  return (
    <div className="min-h-screen">
      <div className="gradient-bg-welcome">
        <Navbar />
        <WelcomePage />
      </div>
      <Services />
      <Transactions />
      <Footer />
    </div>
  )
}

export default App